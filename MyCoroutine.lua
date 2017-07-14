MyCoroutine = {}

function MyCoroutine.CreatCor()
	cor = coroutine.create(
		function()
			for i=1,10 do
				print(i)
				if i == 3 then
					print(coroutine.status(cor))  --running
					print(coroutine.running()) --thread:XXXXXX
				end
				coroutine.yield()
			end
		end
	)
	return cor
end

function MyCoroutine.RunCor(cor1)
	coroutine.resume(cor1) --1
end
