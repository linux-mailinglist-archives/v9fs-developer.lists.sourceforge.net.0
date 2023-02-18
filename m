Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3BA69B8D9
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 09:58:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTJ2f-0006Wm-Vf;
	Sat, 18 Feb 2023 08:58:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTJ2d-0006WY-ML
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:57:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ubkQvRzSSBkiGGklnpex2BU+jgWyII/4bCUelk7PNlY=; b=IxZIL4VKPq9D2hpLr8ma0yZnfV
 4q0S58gIfzkzHph4m51RnznLU9v2espOp4r2YmbIVgW+buHrloB4boxbre+oyzBdlQaklUamKJ7l9
 Z7jOriwrQO2uwvNrP1IDSBFWRJ9ovIwnoltCpiYeUNo8Gj55ORDqfbv/PlqDLjzx8al0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ubkQvRzSSBkiGGklnpex2BU+jgWyII/4bCUelk7PNlY=; b=BdY3PZxpN6Hjc3n9w7/c+oexcG
 TCoAcYcwi+X7bTzg2eIcpQjRaV/F22DLFNSV3eQ6itiSFEgGWjVCx7Z6fucvUINuo7nBQiEyhLPNN
 d4H19WgX4xWAdVDE/yPqIER7Ri8hv9Jji38sAc/OxZB6U23X0nTvoBvI9Fv/WgVEiJJY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTJ2a-0003Hr-Tr for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:57:59 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 4640EC01E; Sat, 18 Feb 2023 09:58:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676710695; bh=ubkQvRzSSBkiGGklnpex2BU+jgWyII/4bCUelk7PNlY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E0lfYDsXGftZOMT3IXaaAj2YaCMEOhcT6/6mSmLZPpFsw2XR9KO5YsU5gshxN3dD6
 9nRiufsd+S7v9xJKsOuj2wiQQz6H8OtLdSM6KzFSEzwali6Fwg3P9y1YlWLQ6ZTb6U
 ngSBVNmVp5CKW3Gcc14Gbh1BB5TWQCHDC+DpjO57CrchsDZjtruG6T5HGamNyuR79J
 1ERAi4xsMXkNtcKKUG+HLdDxx0QkuYNyBZK3HrcuJk/oTYQhbzr/xOVpeaGH9kAY6P
 NUedCLScCw4AtTigM4gESPUrksCdQ16ZuRgolKNHb7+FpkBC2iqK7wd2BjY18mfqjx
 lwTcEdvUo06TQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 82DEAC009;
 Sat, 18 Feb 2023 09:58:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676710694; bh=ubkQvRzSSBkiGGklnpex2BU+jgWyII/4bCUelk7PNlY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qCBPvYDUvj/yFub9mWEsBwW5RQthw4bAD68gxcyt4+AgoLY6bx9mBbjB+oYU7KdgZ
 b+Gjh5deCVq0X6xqOsO5lGogGT4n56e408gDNUirqwwA0g3WMOBhdAOMsZ3kCCuCKc
 OrYajWtesVodY4FSCjQzIwa0WWM/o0UhxNUbdCErCJh3pqEgamb6DU1e8sF7cS31f2
 7Dlj53N+SnMCp/A9yIkKhUrStL0YwlXHynE+AfMBqLQMWyN/Y4D1Jcpkk9rwfUfIXt
 BGIlqiEGixcf3jJvJkSU4KPLmxj4iELa4OHDBNNwO7TsJP8QZcsBVGrV0VPRnIslb2
 72K92JpSD2jQQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 8c16b593;
 Sat, 18 Feb 2023 08:57:46 +0000 (UTC)
Date: Sat, 18 Feb 2023 17:57:31 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CS++GmLaVOzy7S@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-3-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-3-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:14AM
 +0000: > If cache is enabled, make sure we are putting the right things >
 in place (mainly impacts mmap). This also sets us up for more > c [...] 
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
X-Headers-End: 1pTJ2a-0003Hr-Tr
Subject: Re: [V9fs-developer] [PATCH v4 02/11] fs/9p: Expand setup of
 writeback cache to all levels
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

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:14AM +0000:
> If cache is enabled, make sure we are putting the right things
> in place (mainly impacts mmap).  This also sets us up for more
> cache levels.
> 
> Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>

Reviewed-by: Dominique Martinet <asmadeus@codewreck.org>

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
