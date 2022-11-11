Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36888624F7C
	for <lists+v9fs-developer@lfdr.de>; Fri, 11 Nov 2022 02:23:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1otIlW-0006yN-TF;
	Fri, 11 Nov 2022 01:23:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shaozhengchao@huawei.com>) id 1otIlV-0006yH-56
 for v9fs-developer@lists.sourceforge.net;
 Fri, 11 Nov 2022 01:23:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xSrKtwnFK2kewR+4U8BEJ1Q5Aki+hg8aSCP84SWWdc4=; b=BkgJxnrPp62HHkxv/1DBEq/K/2
 BLG6LnBcUGGSvSotGp0zMfk5B+VUXhHKOQ4qn7XGGJx7TnBRdwt37cqxi0N+N0mNlG9WzU9F+qhl5
 BCqrdg1obwrzQUVoO4UsY5aAUuhHXUU/amjNkuh1i+P55Y1eQI3r+ExC5IaD5XAmlavc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xSrKtwnFK2kewR+4U8BEJ1Q5Aki+hg8aSCP84SWWdc4=; b=l7a4eL0p5fibxJXAFuRYoWw1Fn
 azcz3wJBGf8OpwgGWNOlm7OZM5jRFnJkXa1ykxR79SFaO7ornbHEcJQ5s3NtVPOtIMxaaVfBJ4FQX
 qaMLJSM3L9gwo1rMTWgzASkhQkqoLBwXUOgd7TSmHWUGCH3KhNEg6bGmc7ctSCJcJht8=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1otIlQ-0007VJ-Tz for v9fs-developer@lists.sourceforge.net;
 Fri, 11 Nov 2022 01:23:28 +0000
Received: from dggpeml500026.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4N7gpq3mm4zqSHs;
 Fri, 11 Nov 2022 09:19:31 +0800 (CST)
Received: from [10.174.178.66] (10.174.178.66) by
 dggpeml500026.china.huawei.com (7.185.36.106) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 11 Nov 2022 09:23:13 +0800
Message-ID: <61814668-2717-d140-5a01-f6a46e05de09@huawei.com>
Date: Fri, 11 Nov 2022 09:23:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
To: <asmadeus@codewreck.org>
References: <20221110122606.383352-1-shaozhengchao@huawei.com>
 <Y2zz24jRIo9DdWw7@codewreck.org>
In-Reply-To: <Y2zz24jRIo9DdWw7@codewreck.org>
X-Originating-IP: [10.174.178.66]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpeml500026.china.huawei.com (7.185.36.106)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/11/10 20:51,
 asmadeus@codewreck.org wrote: > Zhengchao
 Shao wrote on Thu, Nov 10, 2022 at 08:26:06PM +0800: >> Syz reported the
 following issue: >> kernel BUG at lib/list_debug.c:53! >> invali [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1otIlQ-0007VJ-Tz
Subject: Re: [V9fs-developer] [PATCH net] net/9p: fix issue of list_del
 corruption in p9_fd_cancel()
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: shaozhengchao via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: shaozhengchao <shaozhengchao@huawei.com>
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, yuehaibing@huawei.com, edumazet@google.com,
 weiyongjun1@huawei.com, kuba@kernel.org, v9fs-developer@lists.sourceforge.net,
 pabeni@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



On 2022/11/10 20:51, asmadeus@codewreck.org wrote:
> Zhengchao Shao wrote on Thu, Nov 10, 2022 at 08:26:06PM +0800:
>> Syz reported the following issue:
>> kernel BUG at lib/list_debug.c:53!
>> invalid opcode: 0000 [#1] PREEMPT SMP KASAN
>> RIP: 0010:__list_del_entry_valid.cold+0x5c/0x72
>> Call Trace:
>> <TASK>
>> p9_fd_cancel+0xb1/0x270
>> p9_client_rpc+0x8ea/0xba0
>> p9_client_create+0x9c0/0xed0
>> v9fs_session_init+0x1e0/0x1620
>> v9fs_mount+0xba/0xb80
>> legacy_get_tree+0x103/0x200
>> vfs_get_tree+0x89/0x2d0
>> path_mount+0x4c0/0x1ac0
>> __x64_sys_mount+0x33b/0x430
>> do_syscall_64+0x35/0x80
>> entry_SYSCALL_64_after_hwframe+0x46/0xb0
>> </TASK>
>>
>> The process is as follows:
>> Thread A:                       Thread B:
>> p9_poll_workfn()                p9_client_create()
>> ...                                 ...
>>      p9_conn_cancel()                p9_fd_cancel()
>>          list_del()                      ...
>>          ...                             list_del()  //list_del
>>                                                        corruption
>> There is no lock protection when deleting list in p9_conn_cancel(). After
>> deleting list in Thread A, thread B will delete the same list again. It
>> will cause issue of list_del corruption.
> 
> Thanks!
> 
> I'd add a couple of lines here describing the actual fix.
> Something like this?
> ---
> Setting req->status to REQ_STATUS_ERROR under lock prevents other
> cleanup paths from trying to manipulate req_list.
> The other thread can safely check req->status because it still holds a
> reference to req at this point.
> ---
> 
> With that out of the way, it's a good idea; I didn't remember that
> p9_fd_cancel (and cancelled) check for req status before acting on it.
> This really feels like whack-a-mole, but I'd say this is one step
> better.
> 
> Please tell me if you want to send a v2 with your words, or I'll just
> pick this up with my suggestion and submit to Linus in a week-ish after
> testing. No point in waiting a full cycle for this.
> 
> 
Hi Dominique:
	Thank you for your review. Your suggestion looks good to me, and
please add your suggestion. :)
>> Fixes: 52f1c45dde91 ("9p: trans_fd/p9_conn_cancel: drop client lock earlier")
>> Reported-by: syzbot+9b69b8d10ab4a7d88056@syzkaller.appspotmail.com
>> Signed-off-by: Zhengchao Shao <shaozhengchao@huawei.com>
>> ---
>> v2: set req status when removing list
> 
> (I don't recall seeing a v1?)
> 
Sorry, please ignore this notes.
>> ---
>>   net/9p/trans_fd.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
>> index 56a186768750..bd28e63d7666 100644
>> --- a/net/9p/trans_fd.c
>> +++ b/net/9p/trans_fd.c
>> @@ -202,9 +202,11 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
>>   
>>   	list_for_each_entry_safe(req, rtmp, &m->req_list, req_list) {
>>   		list_move(&req->req_list, &cancel_list);
>> +		req->status = REQ_STATUS_ERROR;
>>   	}
>>   	list_for_each_entry_safe(req, rtmp, &m->unsent_req_list, req_list) {
>>   		list_move(&req->req_list, &cancel_list);
>> +		req->status = REQ_STATUS_ERROR;
>>   	}
>>   
>>   	spin_unlock(&m->req_lock);
> 
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
