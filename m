Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B8E4EB806
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Mar 2022 03:57:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nZNad-0006aY-W3; Wed, 30 Mar 2022 01:57:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1nZNad-0006aQ-0t
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Mar 2022 01:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JI4OD5/iPgp7EtVM578TsmW1i67Z+lfXBvnZ2YSHb1k=; b=jGhtMoDcE8q9AQDZVLkwhhuedy
 y3aQOlMzNk/1ulgiiLN/aEx7AYqk/f9g8YV1dBLn5DsRZELyTen49cSTkNXkHMHyKMbwjkSFf42yV
 /VeX2qv/FGTwB12IFbAUPzR2fPmzgWZQW4jXndjJNeScPL+CmGUTPIoXwJgmZISmZmNU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JI4OD5/iPgp7EtVM578TsmW1i67Z+lfXBvnZ2YSHb1k=; b=gheyLFcsICCdqkqNG3Z7Cbuk//
 OT8IZfLyjrz73o5uDxPl6XY2TwsrSDqVuAJNqihYuiB4fSu3mYTQA9008XPVJkBoqZ/tcee58g+WC
 f3zpfdg4P1bo2eLIoqG4gPKDI73SKkCSCQSQXCzSqEq8PrAytu8RKZ2/nIN5AUox4QmA=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZNaZ-0001Wh-1G
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Mar 2022 01:57:37 +0000
Received: from fsav311.sakura.ne.jp (fsav311.sakura.ne.jp [153.120.85.142])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 22U1vI3B079229;
 Wed, 30 Mar 2022 10:57:18 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav311.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav311.sakura.ne.jp);
 Wed, 30 Mar 2022 10:57:18 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav311.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 22U1vIWs079191
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 30 Mar 2022 10:57:18 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <fb5d20c5-36a6-2c51-288a-7cc1e0a76d3e@I-love.SAKURA.ne.jp>
Date: Wed, 30 Mar 2022 10:57:15 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>
References: <0000000000009523b605db620972@google.com>
 <385ce718-f965-4005-56b6-34922c4533b8@I-love.SAKURA.ne.jp>
 <YkObebLZMp5AyRpr@codewreck.org>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <YkObebLZMp5AyRpr@codewreck.org>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/03/30 8:51, Dominique Martinet wrote: > Tetsuo Handa
 wrote on Wed, Mar 30, 2022 at 07:35:47AM +0900: >> This seems to be an example
 of >> https://lkml.kernel.org/r/49925af7-78a8-a3dd-bce6-cfc0 [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nZNaZ-0001Wh-1G
Subject: Re: [V9fs-developer] [syzbot] possible deadlock in p9_write_work
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
Cc: Andreas Dilger <adilger@dilger.ca>,
 Andrew Perepechko <andrew.perepechko@hpe.com>, Theodore Ts'o <tytso@mit.edu>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot <syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com>,
 v9fs-developer@lists.sourceforge.net,
 "open list:EXT4 FILE SYSTEM" <linux-ext4@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022/03/30 8:51, Dominique Martinet wrote:
> Tetsuo Handa wrote on Wed, Mar 30, 2022 at 07:35:47AM +0900:
>> This seems to be an example of
>> https://lkml.kernel.org/r/49925af7-78a8-a3dd-bce6-cfc02e1a9236@I-love.SAKURA.ne.jp
>> introduced by "ext4: truncate during setxattr leads to kernel panic".
> 
> Thanks for the pointer
> 
>> Please don't use schedule_work() if you need to use flush_scheduled_work().
> 
> In this case we don't call flush_scheduled_work -- ext4 does.

Yes, that's why I changed recipients to ext4 people.

> The problem is mixing in the two subsystems when someone (e.g. syzbot)
> opens an ext4 file and passes that fd to 9p when mounting with e.g.
> mount -t 9p -o rfdno=<no>,wfdno=<no>
> 
> Frankly that's just not something I consider useful, interacting through
> 9p to a local file doesn't make sense except for testing.
> 
> If that is a real problem, the simplest way out would be to just forbid
> non-socket FDs if it's something we can check.

Do you mean that p9_fd_open() in net/9p/trans_fd.c does not need to accept non-socket file descriptors?
Then, it's something you can check. You can use S_ISSOCK() like e.g. netlink_getsockbyfilp() does.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
