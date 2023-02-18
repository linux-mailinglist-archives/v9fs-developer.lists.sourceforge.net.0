Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB40A69B8CD
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 09:47:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTIsb-00057z-Kc;
	Sat, 18 Feb 2023 08:47:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTIsO-00055S-ED
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:47:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zfYHy+wWsBlnsKVuoRnVIPGybUVspolwP7KgZ3LmG+c=; b=T1GAFzuTRIa+A7orl05/RsceTV
 qeZgHHX0jh/4Pf9CTOdL/gEhLsdPb3F5xU/YRhltvIlDBRZjZc2LkFmDq3sgBstGSSzUOqrQe6dgN
 gKtj/4ICcj/2K4S4Shhofx/JOezUqRklpWyFgEmjIbXSnbw2n4mlM0lMrTmS4Ho1dZwY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zfYHy+wWsBlnsKVuoRnVIPGybUVspolwP7KgZ3LmG+c=; b=IGTgOa1CFCaHR2k9EB64WxQWfZ
 EnpkkebwNdyegMJmSdP2efWuqWoxjqmwlqM3bh2m/uLJPhyN5KzednrQRAD2q1Z1Ya6hKRa02fKot
 ApZq6yk2Xbn8YGjSmy0/7kozJT2k5wmVszU2pTQN+usFRV3s9GaUG0MDq0TlyD9PurdA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTIsL-0002aF-Ve for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:47:23 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 4D801C01D; Sat, 18 Feb 2023 09:47:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676710060; bh=zfYHy+wWsBlnsKVuoRnVIPGybUVspolwP7KgZ3LmG+c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X7yvy2xm4r6SpRSR5HAPB9rS3RX5Vw+zfYarqN8k1rcWfXF0TNqY3rA6Skl0T501k
 GMJYP9FRZn8E+rfLZ5jn+RYyi6vAJpZFOoYGbZeVySnUSMpPq55pKxXyrs2k8KjGAm
 fzpSjvsS25N835AWoLMqWXC3blVPoPg9ckVia2cmMOQutMPD6Zqz8/f5MeWxcVYc/l
 mb78RcpJI+ICML6CopdoCiJov8mglVTfsb8XREhsNHGSNznvuEMHOWbEYBEdXc/JWr
 Ekz4PVkGEg7zhnWmshjoeSUlQzEroIzaglfXBcfmCt/QI/geItve1L/DL2Q9QZdU4v
 m0BDZ0RzDSWnA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id A2DE0C009;
 Sat, 18 Feb 2023 09:47:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676710059; bh=zfYHy+wWsBlnsKVuoRnVIPGybUVspolwP7KgZ3LmG+c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mlQjgfGhvZFfYCtotPkc/EeA+rCka4LdbzDMcSM9SgMsW6pLMhYjuvJ+dit84Pmm3
 Wo1CKyPEGcLABXPuMbhD7xckFkfJ95Q+8tQINB249VIMVwfubo91nTfp2M5tQhKUv3
 4KL3HBOXEne00wQwWfnr1t4r9Y6/vAbGrGkO4DehTP6/E6BQsgaBiKxNVW29SkUISr
 DUD72qsw59ZWrZtAwHg0QLm04c3rVRXVT16452qd1Cj5avRJHJcmFsSemBFEsh/5IA
 oMcZsNgP0qbdGOyCNnTo1tI0PzzfcNO4Wj3dTXoLdPgdY1JfzUxjszNMgjRgfXxVrt
 fXqHm7HwMHy3A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id dd33823b;
 Sat, 18 Feb 2023 08:47:11 +0000 (UTC)
Date: Sat, 18 Feb 2023 17:46:56 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CQgOHjg0kmA1Vg@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-9-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-9-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:20AM
 +0000: > Add some additional mount modes for cache management including >
 specifying directio as a mount option and an option for ignore > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTIsL-0002aF-Ve
Subject: Re: [V9fs-developer] [PATCH v4 08/11] fs/9p: Add new mount modes
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

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:20AM +0000:
> Add some additional mount modes for cache management including
> specifying directio as a mount option and an option for ignore
> qid.version for determining whether or not a file is cacheable.

direct io is standard enough but ignore QV probably warrants a comment
in the code and not just a word in the commit message.

I see you've added these in Documentation/filesystems/9p.rst in
the "writeback mode fixes" -- I guess we can live with commits
introducing options not being 100% coherent within the series (the
implementation also comes in that fixes commit), but perhaps a '/*
ignore qid.version */' comment in the enum?

> diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h
> index d90141d25d0d..48c7614c9333 100644
> --- a/fs/9p/v9fs.h
> +++ b/fs/9p/v9fs.h
> @@ -37,7 +37,10 @@ enum p9_session_flags {
>  	V9FS_ACCESS_USER	= 0x08,
>  	V9FS_ACCESS_CLIENT	= 0x10,
>  	V9FS_POSIX_ACL		= 0x20,
> -	V9FS_NO_XATTR		= 0x40
> +	V9FS_NO_XATTR		= 0x40,
> +	V9FS_IGNORE_QV		= 0x80,
> +	V9FS_DIRECT_IO		= 0x100,
> +	V9FS_SYNC			= 0x200

... And while we're here, indentation seems off on sync

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
