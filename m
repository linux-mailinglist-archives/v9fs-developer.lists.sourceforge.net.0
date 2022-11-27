Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA70F639AF3
	for <lists+v9fs-developer@lfdr.de>; Sun, 27 Nov 2022 14:17:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozHXh-0005DS-3R;
	Sun, 27 Nov 2022 13:17:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ozHXf-0005DL-EH
 for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 13:17:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pKRlGAC33UEFcx3r0pwYxNbma3ADNlqwNuOjgAjivso=; b=eDr1U6SdiUF2JMCXHDtP/T4lll
 BuLUxSZgS+Lr9qvpxiznaFgjb2qsKa/9wOqjC6OQ3qkTij2VUj7kZpkApPBQtMtOijJWZX58g2crz
 VyYCPd+u0cOdNhzyJ9qZVzUXYgETB3S34Sbfv+PQQUCDLSdCT5UBnUyErv11ETNeNSqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pKRlGAC33UEFcx3r0pwYxNbma3ADNlqwNuOjgAjivso=; b=EhvIuyDp2TwqCtnLrIAJc/ip1k
 xSsDk3KPrfpICczQVfWVcpuQiZ+Qpt5F+AcUJ5skq64nt4diML/yzLsxCKL4mGcQUlxNp/gLzntMu
 F6YNI8V7s7wdGBUBCCT9s3v6K6r87+kLi5QaJaetTUSub/wWP1wgBsybPHRDvFOy1/Hg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozHXZ-00FVmn-Te for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 13:17:55 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 9241CC01E; Sun, 27 Nov 2022 14:17:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669555069; bh=pKRlGAC33UEFcx3r0pwYxNbma3ADNlqwNuOjgAjivso=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eZ8v9OQ8oOmzkdZ6VwNnB9KrcOKBscu/jm3AO+FY2D0V3pin1a5zpytCEWoXPfshb
 9sFvHlhMsE68qo2vlvEc7edom8VmTPxgGni3Y7NnQDv4rfnGEsZM8nSPOgDjuHSPob
 cNB78nXSyT/ZyBmmwJvwSBZYVujSrGKPLr0bWLjeHbz04rLsqoPR8GlNaMVi/OLEaq
 SHeEfh+oqm7fWYzqc0OXZWo+65dDgzsViOkH36T+JIf7jZT326u9/PaJLH2xtkCc5+
 lkFKrC4IEfU1XJjftNkfaRmp77eK+H8Fx0uBHQ9zNETb95gzUc3PMnAgi57Db+eQ+W
 Ubr50LLG6I7AQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id DCC84C009;
 Sun, 27 Nov 2022 14:17:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669555069; bh=pKRlGAC33UEFcx3r0pwYxNbma3ADNlqwNuOjgAjivso=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eZ8v9OQ8oOmzkdZ6VwNnB9KrcOKBscu/jm3AO+FY2D0V3pin1a5zpytCEWoXPfshb
 9sFvHlhMsE68qo2vlvEc7edom8VmTPxgGni3Y7NnQDv4rfnGEsZM8nSPOgDjuHSPob
 cNB78nXSyT/ZyBmmwJvwSBZYVujSrGKPLr0bWLjeHbz04rLsqoPR8GlNaMVi/OLEaq
 SHeEfh+oqm7fWYzqc0OXZWo+65dDgzsViOkH36T+JIf7jZT326u9/PaJLH2xtkCc5+
 lkFKrC4IEfU1XJjftNkfaRmp77eK+H8Fx0uBHQ9zNETb95gzUc3PMnAgi57Db+eQ+W
 Ubr50LLG6I7AQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1058bc72;
 Sun, 27 Nov 2022 13:17:34 +0000 (UTC)
Date: Sun, 27 Nov 2022 22:17:19 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <Y4NjX9e04QRYfSCe@codewreck.org>
References: <3d1e0ed9714eaee7e18d9f5b0b4bfa49b00b286d.1669553950.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d1e0ed9714eaee7e18d9f5b0b4bfa49b00b286d.1669553950.git.christophe.jaillet@wanadoo.fr>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christophe JAILLET wrote on Sun, Nov 27, 2022 at 01:59:25PM
 +0100: > Subject: Re: [PATCH] 9p: Remove some unneeded #include I'd go out
 a limb and write it as 'Remove unneeded idr.h #include', but this nitpick
 aside this looks good to me; I'll pick it for next cycle. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ozHXZ-00FVmn-Te
Subject: Re: [V9fs-developer] [PATCH] 9p: Remove some unneeded #include
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christophe JAILLET wrote on Sun, Nov 27, 2022 at 01:59:25PM +0100:
> Subject: Re: [PATCH] 9p: Remove some unneeded #include

I'd go out a limb and write it as 'Remove unneeded idr.h #include',
but this nitpick aside this looks good to me;
I'll pick it for next cycle.

> The 9p fs does not use IDR or IDA functionalities. So there is no point in
> including <linux/idr.h>.
> Remove it.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
