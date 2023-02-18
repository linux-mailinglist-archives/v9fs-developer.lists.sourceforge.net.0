Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7DB69B891
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 08:52:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTI1K-0003X0-MK;
	Sat, 18 Feb 2023 07:52:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTI1I-0003Wu-Mr
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 07:52:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fROapFjKhE+vxFkAOe21o2IY0fvbpMlTcgsaDuyTXTA=; b=a0D4Jy/RxoV9iWK+D+zTrspsS6
 QDH5EzJhwUgqMOdv1xzy13dVP83tuSR34ue8+55IJ0QG0Na/XRKO0as1/zF2pjcf9TZp6OeyTiul8
 vUGnG5V8J88xc7EpcCLoU0YWE/YnYyA3cOyFcucd+nzlHp0fed7cPimw57TM8LAmyFTg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fROapFjKhE+vxFkAOe21o2IY0fvbpMlTcgsaDuyTXTA=; b=j/L2wooIBB4YVrJqUFeqLz02zC
 ep1h7gomFcjaHyNaqhijh/0SGCo6N7HX5xMYIXo4n6mMLbNCNeaYbABLefOMsekrW1wJwlaNTzeVG
 A9ZcYNOa+hv86zhh1zEEG0B2BMB3IttLqEfxmoBvg5j4ohCSDTxbwERM5RA0npsS266I=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTI1E-0007YO-9W for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 07:52:31 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 9587AC01E; Sat, 18 Feb 2023 08:52:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676706765; bh=fROapFjKhE+vxFkAOe21o2IY0fvbpMlTcgsaDuyTXTA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KQoazwGaf00xHDeJJ2w63lcvhrJJY/GnP2k1wl5qGZ+CSqUjOQIjA2HXVugwImUrd
 3J7maTAVQYZWvLDmmCdpco9BJvVWsx530+tPvl7zx7FHpD9lpQB3NpynmTvYOkoG9J
 6t8DKQyPKmEEjFGLeDB++RsSOGXd8DU8es4KV5AulKC6MCEUVnjNEI/rkHzPzE/YuY
 DLcXqJJPMcrKR5P3Sylvar1KH0VRU5sUDdHtC5mRRvEQ5+s4+7B/TQQ/cZpwcAggWg
 2J38CLRYTJ09x8LfeG+TyRFPUeXhawjGExtfgySez6fAjxvAWcK2FjP3JcVp4omUnS
 PFh8LqboctC8w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1D974C009;
 Sat, 18 Feb 2023 08:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676706764; bh=fROapFjKhE+vxFkAOe21o2IY0fvbpMlTcgsaDuyTXTA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kp2dJ0cTkLZeU2PanQyiK8g376dUUACCdnM5CEq2GVZStTBzbs12bxBBIyQYxH9pf
 jKEp4pcbcg+hmm0nImA4D+Ns3LbOUwOsQ7Ix5UJ2/cnDwZe0G4qHnNgQ6/PC/8E3oo
 OvW5QoaWRvmop0E9icHVWRasO6Lky4lSqwKWE7ttxunpqyhgCu62l8bQeNFs6T8Mvy
 dQnVNraigTIVS1cyq2pOwG34j+1cEbvnDjOEqNlZRug1+MhsdpLHV7YK7L2vFvX6pK
 59zbSGunPmAy55LVpD9JDZL//7vlGCaO+/qoAJwEat9eG9tvK/pm+xncR2ngBwOCTI
 0LNndMn9B0pzQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id b6aa872e;
 Sat, 18 Feb 2023 07:52:15 +0000 (UTC)
Date: Sat, 18 Feb 2023 16:52:00 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CDoEvgmLNbhZw7@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-6-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-6-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:17AM
 +0000: > xattr creates a lot of additional messages for 9p in > the current
 implementation. This allows users to > conditionalize xattr sup [...] 
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
X-Headers-End: 1pTI1E-0007YO-9W
Subject: Re: [V9fs-developer] [PATCH v4 05/11] fs/9p: allow disable of xattr
 support on mount
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

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:17AM +0000:
> xattr creates a lot of additional messages for 9p in
> the current implementation.  This allows users to
> conditionalize xattr support on 9p mount if they
> are on a connection with bad latency.  Using this
> flag is also useful when debugging other aspects
> of 9p as it reduces the noise in the trace files.
> 
> Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>

Reviewed-by: Dominique Martinet <asmadeus@codewreck.org>

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
