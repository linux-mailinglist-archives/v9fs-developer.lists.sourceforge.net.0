Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9926094A7
	for <lists+v9fs-developer@lfdr.de>; Sun, 23 Oct 2022 18:10:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1omdYO-000297-LB;
	Sun, 23 Oct 2022 16:10:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1omdYK-000290-Ua
 for v9fs-developer@lists.sourceforge.net;
 Sun, 23 Oct 2022 16:10:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QldR47Fkax5R3uYQN7ZmHe1wprwTKYC0AVcaPhhHSSo=; b=gKFtryVUTt5lCRxSSmvOBix3Yo
 pxfOfDKRVuBpfXrpvL8SoxBIciZmCEU9HIgepTrDvx7HFNqbBHzeQ+5UtcxXxnHej9rGSiEWjGmih
 H/RuMd46CmNsxndzhB4L1h+/2CqScKHlpkPqZ2/3F1lsspYunsNlqbE1zFqIIIZp+aLQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QldR47Fkax5R3uYQN7ZmHe1wprwTKYC0AVcaPhhHSSo=; b=WGsEebiok0VNfHCpPIy6FilhfL
 hRkJQka+kwNiyro3nDyoEBsofN+bBuwyMctSpQwfdhSe60CO4jfmhkQHARqgwro16rd3HUR8+cYtV
 bZwmf2z0fdzFxTnB7cTBnz7lNQF8TlRpJuKMxyffdY5V6QJKXym/B4NfKYvNMPawCdHQ=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1omdYJ-00Eopo-3x for v9fs-developer@lists.sourceforge.net;
 Sun, 23 Oct 2022 16:10:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:
 Content-ID:Content-Description;
 bh=QldR47Fkax5R3uYQN7ZmHe1wprwTKYC0AVcaPhhHSSo=; b=Yu+EUmthuCP/V553ONfIqmMi5K
 ZRdXRp2NAA/VmrCqmc0EBaHA7oPYjobfsU0IMIkes00FbD6yATu6LcaWUpFZ1PICNmoCzm6uPtv5u
 fVH/LKF6pSGg8/jfNqUWwMyzYY6CHX/aLtyjBje8o7SCMy0lcLlGYlWoUCthm01rH57b1hzqnhc4h
 ZHLxfFE3PoaraSripBka7AsPAYYu92owBSmt2dsOMf5EZGptaza1+3yE1HJywEV0MBQ8uImOUNjfJ
 f9U4b+iW4kURGZQENlxIWgT/Tc1SG73TuQu+J6PV41iBR/5abiNq5H9Un67Oz7GSIQbNWRaxus1mI
 ft0UEM7VD1aCZ9o/jJIIzQtC3+MQn95IWRCDI/yNX4LEl8pk2bQiUcMhz01V22to/14IBXjA6Ubpi
 djUXeAOlm+2WbbqWRbPmZTlZiF5iWy5CxSbQ45hiXz/IxtUexhfRRfft9CBFGAxmWMgNXmreyoh7w
 fxg4Mmrt2XQ+Y0os0AGLOH+lNuS4tT51pzMS4ZJMjGS2jQfedVwrpwAhDbQUDucht4ietKie+nzwn
 yMmieZH8BnmxxFrREGZg+k06nBXCSxZmCKs45yFICjcwW5NVypQmDZZLdXPnl0zs6rM9nfAlTnoB0
 1yl0zVwg4hwNIYupn+qrjD3qC7tY3gMh8K/2mCatE=;
To: asmadeus@codewreck.org, davem@davemloft.net, edumazet@google.com,
 ericvh@gmail.com, kuba@kernel.org, linux-kernel@vger.kernel.org,
 lucho@ionkov.net, netdev@vger.kernel.org, pabeni@redhat.com,
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net,
 syzbot <syzbot+9b69b8d10ab4a7d88056@syzkaller.appspotmail.com>
Date: Sun, 23 Oct 2022 18:09:25 +0200
Message-ID: <1696818.m3pq8b1E1X@silver>
In-Reply-To: <0000000000009763b605ebb1519a@google.com>
References: <0000000000009763b605ebb1519a@google.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sunday, October 23, 2022 12:41:34 PM CEST syzbot wrote:
 > Hello, > > syzbot found the following issue on: > > HEAD commit: d47136c28015
 Merge tag 'hwmon-for-v6.1-rc2' of git://git.k.. > git tree: u [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1omdYJ-00Eopo-3x
Subject: Re: [V9fs-developer] [syzbot] BUG: corrupted list in p9_fd_cancel
 (2)
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sunday, October 23, 2022 12:41:34 PM CEST syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    d47136c28015 Merge tag 'hwmon-for-v6.1-rc2' of git://git.k..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=12f36de2880000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=4789759e8a6d5f57
> dashboard link: https://syzkaller.appspot.com/bug?extid=9b69b8d10ab4a7d88056
> compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1076cb7c880000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=102eabd2880000
> 
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/5664e231e97f/disk-d47136c2.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/9bbe0daa4a04/vmlinux-d47136c2.xz
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+9b69b8d10ab4a7d88056@syzkaller.appspotmail.com
> 
> list_del corruption, ffff88802295c4b0->next is LIST_POISON1 (dead000000000100)
> ------------[ cut here ]------------
> kernel BUG at lib/list_debug.c:55!
[...]
> Call Trace:
>  <TASK>
>  __list_del_entry include/linux/list.h:134 [inline]
>  list_del include/linux/list.h:148 [inline]
>  p9_fd_cancel+0x9c/0x230 net/9p/trans_fd.c:703

I only had a short cycle on this yet: so the problem is that the req_list list
head is removed twice, which triggers this warning from [lib/list_debug.c].

Probably moving spin_unlock() call back down to the end of function
p9_conn_cancel() might fix this:

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 56a186768750..409f0da70c52 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -207,8 +207,6 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
                list_move(&req->req_list, &cancel_list);
        }
 
-       spin_unlock(&m->req_lock);
-
        list_for_each_entry_safe(req, rtmp, &cancel_list, req_list) {
                p9_debug(P9_DEBUG_ERROR, "call back req %p\n", req);
                list_del(&req->req_list);
@@ -216,6 +214,8 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
                        req->t_err = err;
                p9_client_cb(m->client, req, REQ_STATUS_ERROR);
        }
+
+       spin_unlock(&m->req_lock);
 }
 
 static __poll_t

spin_unlock() was recently moved up a bit to fix a dead lock, however that
dead lock happened with a lock on client level, meanwhile it was converted
into a lock on connection level.

The question is whether that would fix this for good and not just move it,
because there are a bunch of list removal calls that don't check for the
request state or something to prevent a double removal at other places.

Best regards,
Christian Schoenebeck





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
