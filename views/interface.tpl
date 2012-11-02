% if detail == 'list':
  % if interface:
    <a class="interface" href="/interfaces#{{path}}">{{interface.title}} <span>{{path}}</span></a>
  % else:
    % include pathnotfound path=path, detail=detail
  % end
% elif detail == 'full':
  % if interface:
    <dt><h2 id="{{path}}">{{interface.title}} <span>{{path}}</span></h2></dt>
    <dd>
      <table cellspacing="0" cellpadding="0">
        <tr>
          <th>Description</th>
          <td>{{!interface.description}}</td>
        </tr>
        % if interface.tags:
          <tr>
            <th>Tags</th>
            <td>
              <ul>
                % for path, tag in interface.tags.iteritems():
                  <li>
                    % include tag path=path, tag=tag, detail='list'
                  </li>
                % end
              </ul>
            </td>
          </tr>
        % end
        % if interface.parent:
          % path, component = interface.parent
          <tr>
            <th>Parent Component</th>
            <td>
              <p>
                % include component path=path, component=component, detail='list'
              </p>
            </td>
          </tr>
        % end
        % if interface.mapped_here:
          <tr>
            <th>Requirements Mapped Here</th>
            <td>
              <ul>
                % for path, requirement in interface.mapped_here.iteritems():
                  <li>
                    % include requirement path=path, requirement=requirement, detail='list'
                  </li>
                % end
              </ul>
            </td>
          </tr>
        % end
        % if interface.work_items:
          <tr>
            <th>Work Items</th>
            <td>
              <ul>
                % for path, item in interface.work_items.iteritems():
                  <li>
                    % include workitem path=path, item=item, detail='list'
                  </li>
                % end
              </ul>
            </td>
          </tr>
        % end
      </table>
    </dd>
  % else:
    % include pathnotfound path=path, detail=detail
  % end
% end