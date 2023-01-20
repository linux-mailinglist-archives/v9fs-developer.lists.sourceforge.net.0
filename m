Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC026759EE
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Jan 2023 17:29:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pIuGe-0001zJ-0i;
	Fri, 20 Jan 2023 16:29:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <alexander.shishkin@linux.intel.com>)
 id 1pIuGd-0001zD-3Q for v9fs-developer@lists.sourceforge.net;
 Fri, 20 Jan 2023 16:29:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Nl3cH+qrOj0826kYdnSAMTcIBNT6yafxZvrNTVOAMM=; b=Y4KVumenGjS2CjhtmH2Qr9e7O+
 4Yqnl055bhLYGKx91p9ZPuaea6EFDqPETu58bMGsobPUnEcM+PGzZ/Hcb++8C+3+A4gp1t/q54axM
 b7ef2Vbmb575ZXh82x7Rb1jUoO7zN1/BUfz0TQQOfRYf0wbCpQmM6Fb7aX3popP/IA0Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4Nl3cH+qrOj0826kYdnSAMTcIBNT6yafxZvrNTVOAMM=; b=eOSwda+BqJLpwRkL+R0hsC4chp
 dpy+jbK68aDRkTVGV61gpK1N9Q8PEdw6MQ6ba/LFwCZwuxctMtzwKLLz6Hum6T43MwF7LynqYrrAu
 N9ilYt66ODaP98Z18ULl1Ey6vGzDPEqlXNbKaGjh35NxLcs9uB/7QNOUuvIeAF2PuGho=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pIuGY-0000l7-FM for v9fs-developer@lists.sourceforge.net;
 Fri, 20 Jan 2023 16:29:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674232162; x=1705768162;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=O6wpBdznok9WWQi6tGstvlF0qyv4xAofY8+th1qvITo=;
 b=fWFx0s3jnIiKkuGFLdsOVllpEAVgG1+R3RBNXuNBEwCQxbp+L2JKs5Rz
 bYQi50F0mkUOgF5gbaXy9HkO8i+IEKuMPuKfis5oX4USfIubQyfQwLxr4
 FoeMagblB6vbkQx0T/xiJhd5+Riymept5lFJbI5u4ELNuS2VWr5MzwVu2
 s9BIOfsUPOnY+09yKvDIMDpj7EHY14MiY0mdbfFwHGPs6eeHWobuUhxjV
 pQZQ0xQfron0CNqd4D36xo/hu6vxPPiQi3xCZfCgTQH6qsFal288pZlLp
 BwC6uJsxyPe869t2GxdC4WX34DnBGeg8cCzVHNW53i8GPK7g0MVeBBBQH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="309190337"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="309190337"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 08:29:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="638203235"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="638203235"
Received: from ubik.fi.intel.com (HELO localhost) ([10.237.72.184])
 by orsmga006.jf.intel.com with ESMTP; 20 Jan 2023 08:29:12 -0800
From: Alexander Shishkin <alexander.shishkin@linux.intel.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
In-Reply-To: <20230120074817-mutt-send-email-mst@kernel.org>
References: <20230119135721.83345-1-alexander.shishkin@linux.intel.com>
 <20230119135721.83345-4-alexander.shishkin@linux.intel.com>
 <20230120074817-mutt-send-email-mst@kernel.org>
Date: Fri, 20 Jan 2023 18:29:11 +0200
Message-ID: <871qnpqieg.fsf@ubik.fi.intel.com>
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  "Michael S. Tsirkin" <mst@redhat.com> writes: > On Thu, Jan
 19, 2023 at 03:57:18PM +0200, Alexander Shishkin wrote: >> From: Andi Kleen
 <ak@linux.intel.com> >> >> diff --git a/net/9p/trans_virtio.c
 b/net/9p/trans_virtio.c >> index 3c27ffb781e3..a [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pIuGY-0000l7-FM
Subject: Re: [V9fs-developer] [PATCH v1 3/6] virtio 9p: Fix an overflow
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Andi Kleen <ak@linux.intel.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, jasowang@redhat.com,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, alexander.shishkin@linux.intel.com,
 elena.reshetova@intel.com, v9fs-developer@lists.sourceforge.net,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

"Michael S. Tsirkin" <mst@redhat.com> writes:

> On Thu, Jan 19, 2023 at 03:57:18PM +0200, Alexander Shishkin wrote:
>> From: Andi Kleen <ak@linux.intel.com>
>> 
>> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
>> index 3c27ffb781e3..a78e4d80e5ba 100644
>> --- a/net/9p/trans_virtio.c
>> +++ b/net/9p/trans_virtio.c
>> @@ -629,7 +629,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
>>  		err = -EINVAL;
>>  		goto out_free_vq;
>>  	}
>> -	tag = kzalloc(tag_len + 1, GFP_KERNEL);
>> +	tag = kzalloc((u32)tag_len + 1, GFP_KERNEL);
>>  	if (!tag) {
>>  		err = -ENOMEM;
>>  		goto out_free_vq;
>
> Hmm are you sure there's a difference in behaviour? I thought C will just
> extend the integer to int.

Actually, you're right, integer promotion would extend the original
expression to int. I'll drop this patch also.

Thanks,
--
Alex


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
