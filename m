Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4535850C08A
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Apr 2022 21:58:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nhzQ1-0007ae-VY; Fri, 22 Apr 2022 19:58:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nhzPz-0007aX-HD
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Apr 2022 19:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PKAMLv9q1RRV13PDmQSDI3TEsC6eLazeIeSFa1X2lXo=; b=K/iSDhs6plRMVSKfRFBuMPAttw
 BqZDcOkvscI1HgiOP0wtdpSguf/1En5TA7epeJgb+Uv1XucwF6xU8mm3QCveAhK1MYBMh1e/UJZbw
 CdnoOOspNZ7JRyDf08e4zQ0h4igZp3ltVODayUNGh7hzfqGz2s2804DvcOqYK5e4eWmw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PKAMLv9q1RRV13PDmQSDI3TEsC6eLazeIeSFa1X2lXo=; b=WPNj1/J9nLolfeBJiTUdezkURj
 ep1bONmz+ma72YFCwYxmunygnqynzh06kchOab3O5QLlxsK7dOLKSy5h/qnD6Nn0nBCa2dJHpSWGR
 /UG8bR6fOZQXzmdsJ/U9uVaWl1WVZaS2+jMiDldavZczVABn0tyfMd/BOVubskYYrg+8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhzPu-006oH9-AH
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Apr 2022 19:58:14 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D7574C01F; Fri, 22 Apr 2022 21:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1650657483; bh=PKAMLv9q1RRV13PDmQSDI3TEsC6eLazeIeSFa1X2lXo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TuzSSBtXgCEr2am+ZhAMVAxyyuWQhmwQK5tlbiNdmuLv/pEKRXjl8i+18CORA5/f/
 sqSj2syst63jwB2MiIwumseAf+ZP/AQZxzRUlOnmr1av2sMvA1jfStilkRJic/Nc1v
 oHxblbHHEeTjrJy2e9M+s2WwarXU4hUjT/eFOk5t3KPC6GTILAx8FR+fAk9jKk659i
 0h6GzczVuxYnvAdB57tBNOhiJqcipMGznmCtx/Z6s0Ecfej7y9jzPZWSPhKK5v7opm
 PeHIQNpk5BufWHmUCnIs3CEgjEWfhFWzR5+mctH0H++erEATnzkCDe8k2jwaO+zchV
 HH5ipJ9Q2eMtA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7145EC009;
 Fri, 22 Apr 2022 21:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1650657482; bh=PKAMLv9q1RRV13PDmQSDI3TEsC6eLazeIeSFa1X2lXo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EmIljHzZB/Fy6wLeXbjGGhQUEOxVKB35xGzgxlhIvqov4COAORqh9XKZKPJ53iI0f
 Ob8eH9MitR9Od1DSg0L220wxB92rXrMY2qKIJjP67iiQx6AH3bF0k5UHG5aETK/+Vr
 ALR7rd+Ryv7g19MHdlkUNpT7F4OcR9X50dvjcijYKVP+QW9lM4yzQDBRjKa0b8VWub
 3e17yI7JXlkaHKBi6mHrcNQb5F1tAMVC/uAxYh9UqGSqWmZwb6KBr4BNyxlKJvj1su
 qsVEt7hagteN/I7ogsa5sKNZhQNefwOweX5+VTaD22xGCVI9nYTWco6xMWEGouXr+H
 A7H0/pqqN6WCg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d51252ee;
 Fri, 22 Apr 2022 19:57:55 +0000 (UTC)
Date: Sat, 23 Apr 2022 04:57:40 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Message-ID: <YmMItCb97KqegQw5@codewreck.org>
References: <1757498.AyhHxzoH2B@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1757498.AyhHxzoH2B@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Fri, Apr 22,
 2022 at 08:02:46PM
 +0200: > So maybe it's better to handle case-insensitivity entirely on client
 side? > I've read that some generic "case fold" code has la [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nhzPu-006oH9-AH
Subject: Re: [V9fs-developer] [RFC PATCH] 9p: case-insensitive host
 filesystems
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
 linux-kernel@vger.kernel.org, qemu-devel@nongnu.org,
 Greg Kurz <groug@kaod.org>, Keno Fischer <keno@juliacomputing.com>,
 Michael Roitzsch <reactorcontrol@icloud.com>, Will Cohen <wwcohen@gmail.com>,
 netdev@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Fri, Apr 22, 2022 at 08:02:46PM +0200:
> So maybe it's better to handle case-insensitivity entirely on client side? 
> I've read that some generic "case fold" code has landed in the Linux kernel 
> recently that might do the trick?

I haven't tried, but settings S_CASEFOLD on every inodes i_flags might do
what you want client-side.
That's easy enough to test and could be a mount option

Even with that it's possible to do a direct open without readdir first
if one knows the path and I that would only be case-insensitive if the
backing server is case insensitive though, so just setting the option
and expecting it to work all the time might be a little bit
optimistic... I believe guess that should be an optimization at best.

Ideally the server should tell the client they are casefolded somehow,
but 9p doesn't have any capability/mount time negotiation besides msize
so that's difficult with the current protocol.

-- 
Dominique | Asmadeus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
