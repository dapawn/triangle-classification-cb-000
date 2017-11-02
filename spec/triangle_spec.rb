describe 'Triangle' do


  it 'knows that triangles with no size are illegal' do
    expect{Triangle.new(0, 0, 0).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles with negative sides are illegal' do
    expect{Triangle.new(3, 4, -5).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal' do
    expect{Triangle.new(1, 1, 3).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 2' do
    expect{Triangle.new(2, 4, 2).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 3' do
    expect{Triangle.new(7, 3, 2).kind}.to raise_error(TriangleError)
  end

end
