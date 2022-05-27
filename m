Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D655356F0
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 May 2022 02:03:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nuNRv-0003aA-Kh; Fri, 27 May 2022 00:03:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1nuNRu-0003a4-Rm
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mb7ZmAlHuvpGG1PgGVfmZd0atD/az5Ujm7IAFCqlmoA=; b=HwQbEILC/fsQb9pImSLbBX6ddL
 pCUz32vNOf9xn0UKDP7HtelmXL7z8Atd2NT8jXN9oupbmN59QQTk3mkjUblnxnydnK+P/ROoj0/OJ
 8h5Eya/SxInxJEHipnz5kjbuptMocf2pvqAqb4RcdHZVn7G5rxLEnRukimcJHnDI/TNc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mb7ZmAlHuvpGG1PgGVfmZd0atD/az5Ujm7IAFCqlmoA=; b=AYcjkrM19B4g+KqqReRNRzO42f
 TpgGj6iMaJiaT0VaEOskA4hZvAR37ugQWi5c3R3h/Rjzzddroi1IO+adQ6uMtCUEh8xZ25YWlAi1p
 rRXJj+KCuQ8Uo/M+9r4b6AIzt6XajX3MZQm85Cxuu3bJB8u4/muJJbl3RuPMv0kGiMF0=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nuNRr-0000ho-Tw
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:03:25 +0000
Received: from sequoia (162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 058F620B71D5;
 Thu, 26 May 2022 17:03:16 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 058F620B71D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1653609797;
 bh=mb7ZmAlHuvpGG1PgGVfmZd0atD/az5Ujm7IAFCqlmoA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jY8QzXrXgGOW0gAgEvQQvb1opiIRTxJeqZtvZeFEy9cpJKs0JXN7Gv9/dbw12aSg7
 zba1klecrk8VGRGEvghsuOwuw6e1rZ4SiG481RRrnYs69kpq2KtoL81x47gVH7UDe/
 p8xUfk3Tp6J1/gT3Lq9g0xR+bW/Wecu/qWOWjbaQ=
Date: Thu, 26 May 2022 19:03:12 -0500
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220527000312.GB15462@sequoia>
References: <20220525182530.266068-1-tyhicks@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220525182530.266068-1-tyhicks@linux.microsoft.com>
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-05-25 13:25:30, Tyler Hicks wrote: > Decrement the
 refcount of the parent dentry's fid after walking > each path component during
 a full path walk for a lookup. Failure to do > so can lead to [...] 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1nuNRr-0000ho-Tw
Subject: Re: [V9fs-developer] [PATCH] 9p: Fix refcounting during full path
 walks for fid lookups
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
Cc: v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-05-25 13:25:30, Tyler Hicks wrote:
> Decrement the refcount of the parent dentry's fid after walking
> each path component during a full path walk for a lookup. Failure to do
> so can lead to fids that are not clunked until the filesystem is
> unmounted, as indicated by this warning:
> 
>  9pnet: found fid 3 not clunked
> 
> The improper refcounting after walking resulted in open(2) returning
> -EIO on any directories underneath the mount point when using the virtio
> transport. When using the fd transport, there's no apparent issue until
> the filesytem is unmounted and the warning above is emitted to the logs.
> 
> In some cases, the user may not yet be attached to the filesystem and a
> new root fid, associated with the user, is created and attached to the
> root dentry before the full path walk is performed. Increment the new
> root fid's refcount to two in that situation so that it can be safely
> decremented to one after it is used for the walk operation. The new fid
> will still be attached to the root dentry when
> v9fs_fid_lookup_with_uid() returns so a final refcount of one is
> correct/expected.
> 
> Include a small readability improvement by using a new variable when
> dealing with the root fid as it requires special handling not necessary
> with non-root fids.
> 
> Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
> Cc: stable@vger.kernel.org
> Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>

This patch was doing a little too much code cleanup when it should have
just been fixing the bug. v2 has a patch just focused on fixing the bug
followed by additional patches for code cleanup:

 https://lore.kernel.org/lkml/20220527000003.355812-1-tyhicks@linux.microsoft.com/

Sorry for the churn but v1 wasn't sitting well with me.

Tyler


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
