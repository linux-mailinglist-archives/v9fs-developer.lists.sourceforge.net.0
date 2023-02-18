Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6302169B923
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 10:34:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTJc7-0005bq-Jr;
	Sat, 18 Feb 2023 09:34:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTJbw-0005bi-2J
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 09:34:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E884Tz22K/Co/R04bfibdcUOiKaUHRaF1+DKvwAJTQ0=; b=Jcy4Ueko3HHaHjO/QuWXh+2OJ4
 bWuPf99QH19EdLu4shhxfBWZK0lYBznD1e+qzZCJaQZ1oGnh+2ZfZ/yKMb/gQruP45cmXPgyRaXYz
 /nZfvRcmOWkYA/4EMS2RutGIfyd+3Uzk7aVGwBfu6K8Y+0ueCvWmvYxhxvp16FiIdZkE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E884Tz22K/Co/R04bfibdcUOiKaUHRaF1+DKvwAJTQ0=; b=iZg4lgZtAWLYbwbDrGQFHVKaYY
 pw+1ZsD3ik9wqlibJF4RT78PQVwXINGrK/1VNrruSqHUlNL/HvKJeBkhShOeHRweI3l5mKUO5k9+L
 t9LFegQa3Qv9kYiGTEGbMog0Wi2G3JcvmiN17WHU+ci5cwbV68N4Bh0yA8+DKPhxYWTM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTJbs-008LY0-3h for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 09:34:24 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id A6355C01D; Sat, 18 Feb 2023 10:34:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676712881; bh=E884Tz22K/Co/R04bfibdcUOiKaUHRaF1+DKvwAJTQ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SeSKJObDERH8XBFwBs9fIHaUKAMJj1p9Czs/RlHJ/dIXpjmuW479p8T2xBVIRstEI
 JCguBoY2UmXzSVyRTRCrK4CqAk1vX9vI3t4yV0JyIQdXWxSbygDTWQ7nWRZ+lY4AC2
 GoBxHFg//doGZepK3rNmC1fTBP6daRiD3/zIBr5YhO2Kgk3TLDIAhpmeNmS6Sw14xI
 IaVi2MVaQcT+YrH873SmZ+yWEOjriN4yF6QZgmWO6h7WLm/MF2UfnBJDUnmuytMFDg
 oFaOMBIN6Ly3yw8OqaTjy4jhPk3e2ThHI+u2ulw8o6ajxk8eR8SlyI8S93hM6Gi2JS
 QSK3nxLES0+mQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id F0C4EC009;
 Sat, 18 Feb 2023 10:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676712881; bh=E884Tz22K/Co/R04bfibdcUOiKaUHRaF1+DKvwAJTQ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SeSKJObDERH8XBFwBs9fIHaUKAMJj1p9Czs/RlHJ/dIXpjmuW479p8T2xBVIRstEI
 JCguBoY2UmXzSVyRTRCrK4CqAk1vX9vI3t4yV0JyIQdXWxSbygDTWQ7nWRZ+lY4AC2
 GoBxHFg//doGZepK3rNmC1fTBP6daRiD3/zIBr5YhO2Kgk3TLDIAhpmeNmS6Sw14xI
 IaVi2MVaQcT+YrH873SmZ+yWEOjriN4yF6QZgmWO6h7WLm/MF2UfnBJDUnmuytMFDg
 oFaOMBIN6Ly3yw8OqaTjy4jhPk3e2ThHI+u2ulw8o6ajxk8eR8SlyI8S93hM6Gi2JS
 QSK3nxLES0+mQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 9fb8d6b6;
 Sat, 18 Feb 2023 09:34:12 +0000 (UTC)
Date: Sat, 18 Feb 2023 18:33:57 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CbhQVeO8/pxrBE@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-5-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-5-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:16AM
 +0000: > These flags just add unnecessary extra operations. > When 9p is
 run without cache, it inherently implements > these options so we [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTJbs-008LY0-3h
Subject: Re: [V9fs-developer] [PATCH v4 04/11] fs/9p: Remove unnecessary
 superblock flags
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:16AM +0000:
> These flags just add unnecessary extra operations.
> When 9p is run without cache, it inherently implements
> these options so we don't need them in the superblock
> (which ends up sending extraneous fsyncs, etc.).  User
> can still request these options on mount, but we don't
> need to set them as default.

Hm, I don't see where they'd add any operations -- if you have time
would you mind pointing me at some?

As far as I can see, it's just about 'sync' or 'dirsync' in /proc/mounts
and the ST_SYNCHRONOUS statvfs flag; that looks harmless to me and it
looks more correct to keep to me.

(Sorry, didn't take the time to actually try taking a trace; I've
checked the flag itself and the IS_SYNC/IS_DIRSYNC -> inode_needs_sync
wrappers and that only seems used by specific filesystems who'd care
about users setting the mount options, not the other way aorund.)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
