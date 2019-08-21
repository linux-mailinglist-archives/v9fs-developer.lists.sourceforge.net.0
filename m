Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8133A96F0A
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Aug 2019 03:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:Date:To:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A16xZYx/VUlRqwq7PcHC4hqc1W/4ZVHJrmGYElS5UC0=; b=kT5/9663njDVky3DD5kU64Mmeo
	NCkgNJM5d8Fi7bCYCjqh15897w/CBJ1/1AC1LxzWAB1VBPmhKwEXeqdLlIkQPcCrDsQEXGsfKhR95
	CujgEv+EKoBJMtcUTuQPQZ5ul0zbBsVbPz3warJlYglV9UC+/cpfGo/T3H+eP2hqIJZw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i0FkK-0007Oj-7l; Wed, 21 Aug 2019 01:49:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cgxu519@zoho.com.cn>) id 1i0FkI-0007OS-Jg
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Aug 2019 01:49:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:Reply-To:From:Subject:Message-ID:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DcF5su0fLTO1Pln6URG5KEfqkJ7no+cr1/Tz3A0/29c=; b=OxkAgNU0YmzSVj0/93bO4ny3LR
 QBWjILPRHLUCUbv/eAKOTLoyLCxpNtEce/bhQs7p1Zz9pM/5lUbko6JuywOgiC457jc3/xVPsNpEQ
 CoCevIosuxR7RvIDNUj5yoi1GQRjnKwDoFGO9k4kZKsE1FlrQgcb8Brwywp3xb9UvvH8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:Reply-To:From:Subject:Message-ID:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DcF5su0fLTO1Pln6URG5KEfqkJ7no+cr1/Tz3A0/29c=; b=H23aifdeO5x7FdHqBo8KNz7pmb
 wyZ4QoG901sXMqtkf0E0drAanSX1kXoVDDfjPmZOOZYsrAiTfCVn/1bvs5GQZ/I0O/Al+3Tx0H0Rd
 lTrEQ8vEjAdpGfN7UMfbIdyjXfV7S6C6e02hGoWsr7ayxE4xKMA5rH0hLvIvvndbv0cc=;
Received: from sender3-pp-o92.zoho.com.cn ([124.251.121.251])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1i0FkG-00A3Hc-VM
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Aug 2019 01:49:06 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1566351194; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=qXDiO8FzgxJCCamp5ZOnxH8GADPlPSHLur4pqj/1XkFusSgR4zxgAAPbvwa5TWc65Y9yvJph6Cc4mwYnqJdsIGA0e+fTcvvitOwy7Vi1yXXxLpKAClkJylh8RabS1eXPowpAZtsGI70zuyphL1jJ31T2xP/2N2rgV+IotA6IXwI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1566351194;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:Reply-To:References:Subject:To:ARC-Authentication-Results;
 bh=DcF5su0fLTO1Pln6URG5KEfqkJ7no+cr1/Tz3A0/29c=; 
 b=WTGfIeb93/NnQATYhsuXKzuOj0HAYuNGPHQivWs4851ioPX+zB0McGmqi7I7/RmWu8koplnSLV3b+oi3M2Khs6vzZ9y4zmY12xj5MQK98GJVqzz2RejmsyDvsjVK2pp9TRizYFc49W4NjZysM6wiVlhrBylsaGwxUNqgGGYYnuo=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=zoho.com.cn;
 spf=pass  smtp.mailfrom=cgxu519@zoho.com.cn;
 dmarc=pass header.from=<cgxu519@zoho.com.cn> header.from=<cgxu519@zoho.com.cn>
Received: from hades (218.18.229.179 [218.18.229.179]) by mx.zoho.com.cn
 with SMTPS id 1566351192884306.16074813454156;
 Wed, 21 Aug 2019 09:33:12 +0800 (CST)
Message-ID: <9afcec4d3987296ed4823d024c5a6fc54f741364.camel@zoho.com.cn>
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 21 Aug 2019 09:33:09 +0800
In-Reply-To: <20190820114927.GA12715@nautica>
References: <20190820100325.10313-1-cgxu519@zoho.com.cn>
 <20190820114927.GA12715@nautica>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?124.251.121.251>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i0FkG-00A3Hc-VM
Subject: Re: [V9fs-developer] [PATCH] 9p: avoid attaching writeback_fid on
 mmap with type PRIVATE
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
From: cgxu519--- via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: cgxu519@zoho.com.cn
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2019-08-20 at 13:49 +0200, Dominique Martinet wrote:
> Chengguang Xu wrote on Tue, Aug 20, 2019:
> > Currently on mmap cache policy, we always attach writeback_fid
> > whether mmap type is SHARED or PRIVATE. However, in the use case
> > of kata-container which combines 9p(Guest OS) with overlayfs(Host OS),
> > this behavior will trigger overlayfs' copy-up when excute command
> > inside container.
> 
> hmm, I guess this just works for non-ovl cases because sync_inode()
> realizes there is nothing to sync, but the fsync at the end still
> triggers the copy-up ?
> 
> Well, I guess there really is no need to flush for private mappings,
> so might as well go for this; sparing an extra useless clone walk cannot
> hurt.

Unfortunately, overlayfs does copy-up at open operation if the open flags
indicate data/meta modification, so as long as we attach writeback_fid with
O_RDWR on private mmap there are a lot of unnecessary copy-up of binary and
shared library files on backedn overlayfs when executing command inside kata
containers. After this patch we found there are no useless copy-up files anymore
and also private/shared mmap worked as expected.


Thanks,
Chengguang.

> 
> I'll queue this up after tests, no promise on delay sorry :/





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
