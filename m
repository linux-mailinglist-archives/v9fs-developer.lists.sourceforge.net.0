Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5CD633E30
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 14:54:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxTjl-0007FQ-Ll;
	Tue, 22 Nov 2022 13:54:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <joseph.qi@linux.alibaba.com>) id 1oxTjb-0007FD-9t
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 13:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5iU3Hpkc/79sBspdwJuJHqr5Kn9U5ziqVacQ/9YHEe8=; b=Zrs93Jg6h/yQgpm6X+wXgIHr2t
 LDwcgAcaAxt9g6wRRPS7yN4to2nuJ4oC/MGNhWH2t/8bcQMxrKo9J8erGvTgBP23IqRLhNnOYi+wY
 QWeQQSkPUMUA7zO8Ot0oaSLEfDRX9nnzJtoaJD0t+WkS+FKKtNGkNhldStB9hxQ1dRO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5iU3Hpkc/79sBspdwJuJHqr5Kn9U5ziqVacQ/9YHEe8=; b=e3r+FDqdN+bnmJpLEZWOz7jsOH
 ULmBIJPZRg39c4vLGx8EjXs65794M7w9NkxdnKMb1mL0ZI/STLe1EKN/Yjx6rIF8024GW1FvjeMcu
 +3GM6uybuNb8vp1jceIrhUgP1uCz13Zi3JnrqYwqpUr6BNI9mzXO0ubwWMageOGVlI48=;
Received: from out30-44.freemail.mail.aliyun.com ([115.124.30.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxTjZ-0004rp-8o for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 13:54:47 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R131e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=ay29a033018046049;
 MF=joseph.qi@linux.alibaba.com; NM=1; PH=DS; RN=16; SR=0;
 TI=SMTPD_---0VVSj4Yo_1669125271; 
Received: from 30.32.119.53(mailfrom:joseph.qi@linux.alibaba.com
 fp:SMTPD_---0VVSj4Yo_1669125271) by smtp.aliyun-inc.com;
 Tue, 22 Nov 2022 21:54:33 +0800
Message-ID: <9cc55d4f-d864-aca5-78a0-ea7602c35176@linux.alibaba.com>
Date: Tue, 22 Nov 2022 21:54:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.2
Content-Language: en-US
To: Jeff Layton <jlayton@kernel.org>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>
References: <20221120210004.381842-1-jlayton@kernel.org>
 <0c6a44ff-409e-99b2-eaa9-fd6e87a9e104@linux.alibaba.com>
 <a731e688122d1a6fdb2f7bdbd71d403fa110e9f2.camel@kernel.org>
From: Joseph Qi <joseph.qi@linux.alibaba.com>
In-Reply-To: <a731e688122d1a6fdb2f7bdbd71d403fa110e9f2.camel@kernel.org>
X-Spam-Score: -10.0 (----------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/22/22 8:20 PM, Jeff Layton wrote: > On Tue, 2022-11-22
 at 09:51 +0800, Joseph Qi wrote: >> Hi, >> >> On 11/21/22 4:59 AM, Jeff Layton
 wrote: >>> The file locking definitions have lived in fs.h s [...] 
 Content analysis details:   (-10.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.44 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oxTjZ-0004rp-8o
Subject: Re: [V9fs-developer] [PATCH] filelock: move file locking
 definitions to separate header file
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 samba-technical@lists.samba.org, linux-kernel@vger.kernel.org, hch@lst.de,
 cluster-devel@redhat.com, devel@lists.orangefs.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



On 11/22/22 8:20 PM, Jeff Layton wrote:
> On Tue, 2022-11-22 at 09:51 +0800, Joseph Qi wrote:
>> Hi,
>>
>> On 11/21/22 4:59 AM, Jeff Layton wrote:
>>> The file locking definitions have lived in fs.h since the dawn of time,
>>> but they are only used by a small subset of the source files that
>>> include it.
>>>
>>> Move the file locking definitions to a new header file, and add the
>>> appropriate #include directives to the source files that need them. By
>>> doing this we trim down fs.h a bit and limit the amount of rebuilding
>>> that has to be done when we make changes to the file locking APIs.
>>>
>>> Signed-off-by: Jeff Layton <jlayton@kernel.org>
>>> ---
>>>  fs/9p/vfs_file.c          |   1 +
>>>  fs/afs/internal.h         |   1 +
>>>  fs/attr.c                 |   1 +
>>>  fs/ceph/locks.c           |   1 +
>>>  fs/cifs/cifsfs.c          |   1 +
>>>  fs/cifs/cifsglob.h        |   1 +
>>>  fs/cifs/cifssmb.c         |   1 +
>>>  fs/cifs/file.c            |   1 +
>>>  fs/cifs/smb2file.c        |   1 +
>>>  fs/dlm/plock.c            |   1 +
>>>  fs/fcntl.c                |   1 +
>>>  fs/file_table.c           |   1 +
>>>  fs/fuse/file.c            |   1 +
>>>  fs/gfs2/file.c            |   1 +
>>>  fs/inode.c                |   1 +
>>>  fs/ksmbd/smb2pdu.c        |   1 +
>>>  fs/ksmbd/vfs.c            |   1 +
>>>  fs/ksmbd/vfs_cache.c      |   1 +
>>>  fs/lockd/clntproc.c       |   1 +
>>>  fs/lockd/netns.h          |   1 +
>>>  fs/locks.c                |   1 +
>>>  fs/namei.c                |   1 +
>>>  fs/nfs/nfs4_fs.h          |   1 +
>>>  fs/nfs_common/grace.c     |   1 +
>>>  fs/nfsd/netns.h           |   1 +
>>>  fs/ocfs2/locks.c          |   1 +
>>>  fs/ocfs2/stack_user.c     |   1 +
>>
>> Seems it misses the related changes in:
>> fs/ocfs2/stackglue.c
>>
> 
> I was able to build ocfs2.ko just fine without any changes to
> stackglue.c. What problem do you see here?
> 
Okay, that's because there is prototype declaration in
fs/ocfs2/stackglue.h, and it seems has no real effect in current
version.

So it looks good to me. For ocfs2 part,
Acked-by: Joseph Qi <joseph.qi@linux.alibaba.com>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
