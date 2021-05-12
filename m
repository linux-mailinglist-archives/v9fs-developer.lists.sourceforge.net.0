Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6001237BC20
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 May 2021 13:57:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgnUj-00076U-77; Wed, 12 May 2021 11:57:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lhenriques@suse.de>) id 1lgnUi-00076K-Dj
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 11:57:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-Reply-To:
 Date:References:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ELU/KdHpUaHwY+qt3vmvjeQwCT7a9CZzxglc0rQByE0=; b=BAwVeiyfJw0RKYtvXOYWYgVINB
 Kb12Hwvawfj/ceu+HqsEbrp+7/o7Tl5c1giaNbKabAqS5kQXjzdCONV/3HpZYKKeaWyp7PJYUonF9
 0S3PQmWWB2F8ppQWLm1/ChU6/VXqkELJJEYuo39dHW+o4luDZaDMFpK7GbEOr8JqUq0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ELU/KdHpUaHwY+qt3vmvjeQwCT7a9CZzxglc0rQByE0=; b=SRFkWzp0IoKVqTv2WeQgfOrbz1
 fHdvq+5kVQb5xTBVa3jd3JztV2oW1g0uPBbiXEJ9VIxJHxkYeLUDH+a+A100j0YPBTROBY2s9WnUE
 YF15M3RryNTg+yEEyuTRxB6JCv6rZQL1Gq5RQcNDCsIUCwahFDYT9NoNlmipNpGDblD4=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lgnUb-0001XP-HK
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 11:57:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 270B5AFEB;
 Wed, 12 May 2021 11:57:25 +0000 (UTC)
Received: from localhost (brahms [local])
 by brahms (OpenSMTPD) with ESMTPA id 77612906;
 Wed, 12 May 2021 11:58:59 +0000 (UTC)
From: Luis Henriques <lhenriques@suse.de>
To: David Howells <dhowells@redhat.com>
References: <87tun8z2nd.fsf@suse.de> <87czu45gcs.fsf@suse.de>
 <2507722.1620736734@warthog.procyon.org.uk>
 <2882181.1620817453@warthog.procyon.org.uk>
Date: Wed, 12 May 2021 12:58:58 +0100
In-Reply-To: <2882181.1620817453@warthog.procyon.org.uk> (David Howells's
 message of "Wed, 12 May 2021 12:04:13 +0100")
Message-ID: <87fsysyxh9.fsf@suse.de>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lgnUb-0001XP-HK
Subject: Re: [V9fs-developer] 9p: fscache duplicate cookie
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells <dhowells@redhat.com> writes:

> Luis Henriques <lhenriques@suse.de> wrote:
>
>> [ I wonder why the timestamps don't match between the traces and the
>>   kernel log... ]
>
> I've seen that.  I wonder if the timestamping of printk lines is delayed by
> the serial driver outputting things.
>
>> So, can we infer from this trace that an evict could actually be on-going
>> but the old cookie wasn't relinquished yet and hence the collision?
>
> It might be illuminating if you can make it print a traceline at the beginning
> of v9fs_evict_inode() and in v9fs_drop_inode().  Print the cookie pointer in
> both.

Ok, here's what I'm getting:

...
<...>-20575   [002] ...1    67.519214: fscache_acquire: c=0000000097476aaa p=000000003080d900 pu=50 pc=49 pf=22 n=9p.inod
<...>-20585   [003] ...2    67.535091: 9p_fscache_cookie: v9fs_drop_inode cookie: 00000000cd0099b3
<...>-20585   [003] ...1    67.535093: 9p_fscache_cookie: v9fs_evict_inode cookie: 00000000cd0099b3
<...>-20585   [003] ...1    67.535115: fscache_relinquish: c=00000000cd0099b3 u=1 p=000000003080d900 Nc=0 Na=1 f=26 r=0
<...>-20585   [003] ...1    67.535118: fscache_cookie: PUT rlq c=00000000cd0099b3 u=0 p=000000003080d900 Nc=0 Na=0 f=16
<...>-20585   [003] ...1    67.535120: fscache_cookie: PUT prn c=000000003080d900 u=49 p=0000000042542ee5 Nc=48 Na=1 f=22
<...>-20591   [000] ...2    67.538644: fscache_cookie: GET prn c=000000003080d900 u=50 p=0000000042542ee5 Nc=48 Na=1 f=22
<...>-20591   [000] ...1    67.538645: fscache_acquire: c=0000000011fa06b1 p=000000003080d900 pu=50 pc=49 pf=22 n=9p.inod
<...>-20599   [003] .N.2    67.542180: 9p_fscache_cookie: v9fs_drop_inode cookie: 0000000097476aaa
<...>-20599   [003] .N.1    67.542181: 9p_fscache_cookie: v9fs_evict_inode cookie: 0000000097476aaa
<...>-20591   [000] ...2    67.542980: fscache_cookie: *COLLISION* c=0000000097476aaa u=1 p=000000003080d900 Nc=0 Na=1 f=26
<...>-20599   [003] ...1    67.543098: fscache_relinquish: c=0000000097476aaa u=1 p=000000003080d900 Nc=0 Na=1 f=26 r=0
<...>-20599   [003] ...1    67.543100: fscache_cookie: PUT rlq c=0000000097476aaa u=0 p=000000003080d900 Nc=0 Na=0 f=16

(Note that I'm only tracing v9fs_{drop,evict}_inode if we have a cookie
for the inode; there are a bunch of drop/evict calls where the cookie is
NULL.)

So, this is... annoying, I guess.

Cheers,
-- 
Luis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
