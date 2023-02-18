Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD1B69B8D5
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 09:55:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTJ0g-0006Uh-8p;
	Sat, 18 Feb 2023 08:55:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTJ0Y-0006UN-37
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:55:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rmDypawu+51PJyFLO+R0QGTEt+vCIzj5+qIOxEvcCX0=; b=lICrFgyq9FekrAEnsyjtqfhoCO
 cpf9r+34Y8MQMifGIlG8XurH0uhGwgnmLLF2aVljqFL6c68RIy0JTt8QQg6nLCmtW/H3OT4BCy6Ej
 R9M9sdD7zi6eD7yc25UJS27nn+pM+kLgyICTIBIrKLnAVHIqBXcurdxiWTbKHqx8B32E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rmDypawu+51PJyFLO+R0QGTEt+vCIzj5+qIOxEvcCX0=; b=SX5v3uJFXHWpfsPS2xukWhD8s4
 p3zX8SWdKZAKNQfyAajHHDFw/lzy/vbSQ+is8rhwrIbp9QwwuvDOjI7IijjxaPhggDo8/v6EbWWUn
 l/lS/bLLdRmOwF6Ad7JWo3TSu/rRGcK5BkrtNCPPIWBqvyTPAukL769v1PpvVQ187iDE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTJ0T-008IOM-Qe for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:55:49 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 5968DC01C; Sat, 18 Feb 2023 09:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676710563; bh=rmDypawu+51PJyFLO+R0QGTEt+vCIzj5+qIOxEvcCX0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ROEtQMleKCNI9GkdeyWu/+8EX3Ujw/BkNBRyFE6GK//56etGh/icAKrjn961k2Nyd
 MhpEmyWbZL3ULYCnhwKPQC9ZMSrUmma2vVWymGo4G9kq4Eii96Rj7e52MACtJQbUxt
 Rcg/u1WSVxjEuE0+ZmFhSz1GwClnwU7ErhDw+lRAhkqta8uKyKTNgId3oaFXEeq5FC
 6/Ih+RJp7+4/Ir1hAN173co00GQjfq0XD5B9gBV8q+1yBtMA/5iaFcxdZ9AO+b5Pyd
 T2wKZNvIzDIcmKjUDqdJHAT251jtJoFoOzIYt2UEZny8WDttOxKhE2W+pWjt919Qmr
 S/K2RYPcKMSCw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id A1C80C009;
 Sat, 18 Feb 2023 09:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676710562; bh=rmDypawu+51PJyFLO+R0QGTEt+vCIzj5+qIOxEvcCX0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hbWNlrezX4KzLObMiKvKPYPks6rFHMwAQOzMjigQfxPQzePwn0+ryk3GxPdFQJ1qB
 K/Czcu+KZmn5KMHFQDrASzDXZXX7+no1FU08cUJKq59glD3JHVid23hxVTHFubiZSH
 6PBbaNRklnxqTzVBCpWKqBatSiyNJIYLt4PKjD3JYQmSihN8Bru50QRtJRo4sG4t68
 xAu2n171LPHGsplsuJeK66WL/cvx/gMIMQqNy8a4nuSwFfqlPUUNfUa+GWCy5/NN/P
 eSkW4xvT9m251N5BoAzYQyb4+yEU5ZJRmDmiIz01MM2n6SgpPHXTQXyWkH1/OE7J2T
 ACd8DGtWvekdQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 744eb814;
 Sat, 18 Feb 2023 08:55:34 +0000 (UTC)
Date: Sat, 18 Feb 2023 17:55:19 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CSd2oYO9dBbVUH@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-12-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-12-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:23AM
 +0000: > Unclear if this case ever happens, but if no inode in dentry, then
 > the dentry is definitely invalid. Seemed to be the opposite i [...] 
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
X-Headers-End: 1pTJ0T-008IOM-Qe
Subject: Re: [V9fs-developer] [PATCH v4 11/11] fs/9p: Fix revalidate
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

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:23AM +0000:
> Unclear if this case ever happens, but if no inode in dentry, then
> the dentry is definitely invalid.  Seemed to be the opposite in the
> existing code.

Looking at other implementations of d_revalidate (ecryptfs, cifs, vfat)
it seems to be assumed that the inode is always valid.

I'd just remove the if, or if we keep it add a WARN or something for a
while so we can remove it in a few releases?

(That said, it's better to return 0 than 1 here, so don't take this for
a no -- progress is progress)
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
