Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 060B96EE0F6
	for <lists+v9fs-developer@lfdr.de>; Tue, 25 Apr 2023 13:14:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1prGcc-00007c-GD;
	Tue, 25 Apr 2023 11:14:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1prGcS-00007K-2p
 for v9fs-developer@lists.sourceforge.net;
 Tue, 25 Apr 2023 11:14:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B5zb2CXg13s0Ew4Pa8AsIx4tjGGlfSVk1dK8pluCJLE=; b=gt1KO1+uBQypV0u8da4yshBi0v
 4hc3cE7iulklzjfucutLR1JLbqEo4canfyWgkpj3qVh4m9OCdlE0CLpoVoaP0XeiyMzIde+xzMUlm
 b+/XTZE2i38YkLW2Fo98SkKFWLimUOhFZSDc8IM3t5KYo71Na7ZfUzUWRgFyk94jH3kw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B5zb2CXg13s0Ew4Pa8AsIx4tjGGlfSVk1dK8pluCJLE=; b=cUgYzvBzABCliItP1+WtYcMRvz
 BSYTHSTRCGgLCWhHqwqjK1p2jCCqJRiGF9NEQYToBUHU8aLKOwzdDXDvx3LvFG5/LYdLskjvPFtgY
 AeV6jdzzF5x6Dfy6Q+B30Df39n7rRvsNKOQYcqu5HqlxEU6Xc6zmw7uAqLpG6Fhn2LkE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1prGcO-000st9-Ro for v9fs-developer@lists.sourceforge.net;
 Tue, 25 Apr 2023 11:14:00 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 752A7C01B; Tue, 25 Apr 2023 13:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1682421228; bh=B5zb2CXg13s0Ew4Pa8AsIx4tjGGlfSVk1dK8pluCJLE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sSli27UiRzkF3RQzVb2pDH1qwMlqNKKeIB9IeHCVjsveZMWrxNd+iowSHjRhWzu98
 RmKt1D496AVLABixK18RlzoyLS5Ja/W2VOCDKmYTegnyFIBxFFJ4mwQ0sCw82GGUrn
 OEXi2h0kOHZHlCAdr5fQu4GRDnJdY5AftbZ3VO62iQ3x2qBL+j2xopz9h1to6lwwoJ
 VVUmblTNtCY2CCdILyAhqvLhs8tk6lVx2B7sNyrGvLDjrRr31u+T2G5TbxoVf6U63+
 vq2IBJh5TWD5baByn/l0zlO/lWcU/mMlUa80iIoK+wPXPKVWBUH6jeT7tgdE+UM6MN
 45W8MjYB+YfSw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1A0CEC009;
 Tue, 25 Apr 2023 13:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1682421228; bh=B5zb2CXg13s0Ew4Pa8AsIx4tjGGlfSVk1dK8pluCJLE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sSli27UiRzkF3RQzVb2pDH1qwMlqNKKeIB9IeHCVjsveZMWrxNd+iowSHjRhWzu98
 RmKt1D496AVLABixK18RlzoyLS5Ja/W2VOCDKmYTegnyFIBxFFJ4mwQ0sCw82GGUrn
 OEXi2h0kOHZHlCAdr5fQu4GRDnJdY5AftbZ3VO62iQ3x2qBL+j2xopz9h1to6lwwoJ
 VVUmblTNtCY2CCdILyAhqvLhs8tk6lVx2B7sNyrGvLDjrRr31u+T2G5TbxoVf6U63+
 vq2IBJh5TWD5baByn/l0zlO/lWcU/mMlUa80iIoK+wPXPKVWBUH6jeT7tgdE+UM6MN
 45W8MjYB+YfSw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 23ed73fc;
 Tue, 25 Apr 2023 11:13:42 +0000 (UTC)
Date: Tue, 25 Apr 2023 20:13:27 +0900
From: asmadeus@codewreck.org
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <ZEe11w5mG_pv5X_o@codewreck.org>
References: <20230218003323.2322580-11-ericvh@kernel.org>
 <ZCEGmS4FBRFClQjS@7e9e31583646>
 <7686c810-4ed6-9e3a-3714-8b803e2d3c46@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7686c810-4ed6-9e3a-3714-8b803e2d3c46@wanadoo.fr>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christophe JAILLET wrote on Tue, Apr 25, 2023 at 09:11:01AM
 +0200: > This code looks strange. > P9_OWRITE is 0x01, so !P9_OWRITE is 0.
 > So the code is equivalent to "p9_omode = P9_ORDWR;" > > Is it w [...] 
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
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1prGcO-000st9-Ro
Subject: Re: [V9fs-developer] [PATCH v5] fs/9p: remove writeback fid and fix
 per-file modes
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christophe JAILLET wrote on Tue, Apr 25, 2023 at 09:11:01AM +0200:
> This code looks strange.
> P9_OWRITE is 0x01, so !P9_OWRITE is 0.
> So the code is equivalent to "p9_omode = P9_ORDWR;"
> 
> Is it what is expexted?
> 
> Maybe
> 	p9_omode = (p9_omode & ~P9_OWRITE) | P9_ORDWR;
> ?

Since we're discussing tooling, sparse caught this one:
fs/9p/vfs_inode.c:826:38: warning: dubious: x & !y
fs/9p/vfs_inode_dotl.c:291:38: warning: dubious: x & !y

(runing with make `M=fs/9p W=1 C=2` ; unfortunately error code doesn't
reflect a problem so that'll require inspecting output to automate...)


I've tried running scan-build in a very old-fashioned way (getting the
gcc lines from make V=1 and re-running with scan-build) and it had some
arguable warnings (setting `ret = 0` before it is overwritten again is
considered a dead store), but it had some real problems as well so it
might be worth fixing these just to reduce the clutter and run it all
the time.
I'll post a couple of patches tomorrow (unrelated to this)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
