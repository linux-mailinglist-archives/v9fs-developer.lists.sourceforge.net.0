Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F666B6190
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 23:48:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pb80T-0008UX-B4;
	Sat, 11 Mar 2023 22:48:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1pb80S-0008UR-BF
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 22:48:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Type:MIME-Version:Message-ID:Subject
 :Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I8q2BnsEIW5BWUm1sDukVLw/zzl+nCal74X73LZ+BVs=; b=WwD7A+uyBf50iEHOWTYVshmu+e
 Pe7JxfwR1/LQroWp9JQLJQX86Dm1naGBEcrZXaLggw3mB2T1jfBMoM5fTQeCrSo4U5oepnumlmul6
 /8BH6y5HpiVtKEHyi29saAEn2aJrK62eiJ/OJyLn9TOoL5Mss3pGJTjky/wCTFSse4DY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=I8q2BnsEIW5BWUm1sDukVLw/zzl+nCal74X73LZ+BVs=; b=b
 Ke2uXCxwW4QpLIP06pwDXlcbXcEMkTxi0NboWIciacL5shZZF5BDVQ0kFE7OKyMJ8gN3g/RTudzkK
 GwMh3gh5oI27yKjc3jJ9gJfzru6KoNxnUSf73ZpKgFFJN1SKvvJoz3chKQC9yWbN9PD0yqzfoYTfp
 UD9ViF2rsyyx4pQI=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pb80P-0052Dj-OJ for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 22:48:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=I8q2BnsEIW5BWUm1sDukVLw/zzl+nCal74X73LZ+BVs=; b=vtKmVizfKdXA6bY4bqBuFHEL/j
 acdmVdoXHOJ/0bYt5Ip7CbwQWIY3T3hD+HpKj9MqyZxMJ1mDkrP/fU5+Ic75TPZg+s61B7L/AVQ19
 ggzs1nrzEwpfRuaLdtcUTh6reWwzAHL3wifjtci8x1m1ZQDzgsg2o14tw9yVar3BCEmdT0YmbaXzH
 BHzhDiwMgD0SOeeAT6ZX12VtgixFTFhHQFuqUtHgLWdRVECUe330vhDuEgN00Gw3LSxSmT9zlT8nf
 lsLfiFYum4P/qS/EQv2AFCuxy/cX/iiJXjRLTZ/3J+Yje5DYUGNyn/O/gi0avH2alDzup5XcUu13g
 5Ztvp9Ig==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1pb80B-001Qj4-Q7; Sat, 11 Mar 2023 22:47:47 +0000
Date: Sat, 11 Mar 2023 14:47:47 -0800
From: Luis Chamberlain <mcgrof@kernel.org>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org
Message-ID: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: We've embraced 9p on kdevops [0] for support to let a guest
 use a host's path to install Linux. This works well except I notice that
 if the host makes new changes the guest does not see it. This just [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pb80P-0052Dj-OJ
Subject: [V9fs-developer] 9p caching with cache=loose and cache=fscache
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
Cc: v9fs-developer@lists.sourceforge.net, Luis Chamberlain <mcgrof@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

We've embraced 9p on kdevops [0] for support to let a guest use a host's
path to install Linux. This works well except I notice that if the host
makes new changes the guest does not see it. This just means the guest
has to reboot every time before running 'make modules_install install -j 8'
and it is unexpected and not user friendly.

I wanted to see if someone was working on fixing this yet. I've tested
with both cache=loose and cache=fscache. We use msize 131072, no
security and virtio-9p-pci.

[0] https://github.com/linux-kdevops/kdevops

  Luis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
