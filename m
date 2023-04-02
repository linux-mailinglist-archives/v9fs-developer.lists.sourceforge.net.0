Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C05D36D39CC
	for <lists+v9fs-developer@lfdr.de>; Sun,  2 Apr 2023 20:23:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pj2MM-00067a-VW;
	Sun, 02 Apr 2023 18:23:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pj2ML-00067T-5u
 for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 18:23:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7BxS2xXT1chsYm3tVDETr/9nBuiwdQJK5hypDU99THI=; b=NFdpiO2jxF9U+qN406PehJKDRk
 XhQgzOkVjkVjLiCYZX9Q0RPp0FEUIm5cp6X3xeFEFrQNU8oNnR1Fix/2uovENzD7TnJGAeEYCxjUm
 LgpOoMZZLUJiRvR5WVl8v8+tgcT9SvyAt0AYDx0wvuCgUcQ/zvbybxjbX+FA3GSIZ7Kw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7BxS2xXT1chsYm3tVDETr/9nBuiwdQJK5hypDU99THI=; b=KHKe6oLUYhwlGgeX5vyKbwn51U
 RtvILtzgW1anK9Vs86qimWy1Veq6ZmJ6FhQMmSuJqXkO6ObLAmVjom0BahN7SlEPRjlmZN7C7XnPw
 ALOdonWQiDPTdp2colNKrd8C56GT8NRunL5bSRdBz3MPjtlUphipmh3lpO31vx29L1VU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pj2MJ-00Czox-6T for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 18:23:19 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id BA234C01C; Sun,  2 Apr 2023 20:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1680459792; bh=7BxS2xXT1chsYm3tVDETr/9nBuiwdQJK5hypDU99THI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2ESiUcIjaVjFbuzagVRTMP0/Qms1EKNYqClc+Kfw+fkoRxhKsRysK4qlPIfOQrgmQ
 kK0nJyY8Fplqkjl9ChBl/7J1OOsfu0CYWya/pveV7CAzCTORtu2AhL8ARjCVBKPRrF
 qp4IJjZpkIcmmu41CQ34rm+KJlMeSFB9dzo2ym6pCeq3I4Fj5xEf6dRUrHb3/cEaLR
 UtLJBjT9LN6uRi7+Dfk+EWBuf7rxH+2dN0kYDxFRnRQ2+AQHdctqoS1QRi7xyAo1Va
 fPmIC/IPK0gDT0Nz6rdOhdkk6PqH9HD4uQi6bvcKjUEq38F/4SJEO6qn4wV4RFei9S
 ySJpFYIReFV+Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 4DCFEC009;
 Sun,  2 Apr 2023 20:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1680459792; bh=7BxS2xXT1chsYm3tVDETr/9nBuiwdQJK5hypDU99THI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2ESiUcIjaVjFbuzagVRTMP0/Qms1EKNYqClc+Kfw+fkoRxhKsRysK4qlPIfOQrgmQ
 kK0nJyY8Fplqkjl9ChBl/7J1OOsfu0CYWya/pveV7CAzCTORtu2AhL8ARjCVBKPRrF
 qp4IJjZpkIcmmu41CQ34rm+KJlMeSFB9dzo2ym6pCeq3I4Fj5xEf6dRUrHb3/cEaLR
 UtLJBjT9LN6uRi7+Dfk+EWBuf7rxH+2dN0kYDxFRnRQ2+AQHdctqoS1QRi7xyAo1Va
 fPmIC/IPK0gDT0Nz6rdOhdkk6PqH9HD4uQi6bvcKjUEq38F/4SJEO6qn4wV4RFei9S
 ySJpFYIReFV+Q==
Received: from localhost (odin [local])
 by odin (OpenSMTPD) with ESMTPA id 4020d9b3;
 Sun, 2 Apr 2023 18:23:07 +0000 (UTC)
Date: Mon, 3 Apr 2023 03:22:52 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <ZCnH/HRprV13ugHc@codewreck.org>
References: <ZCEIEKC0s/MFReT0@7e9e31583646> <3443961.DhAEVoPbTG@silver>
 <CAFkjPT=j1esw=q-w5KTyHKDZ42BEKCERy-56TiP+Z7tdC=y05w@mail.gmail.com>
 <5898218.pUKYPoVZaQ@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5898218.pUKYPoVZaQ@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Sun, Apr 02,
 2023 at 04:07:51PM
 +0200: > > So, mapping of existing (deprecated) legacy modes: > > - none
 (obvious) write_policy=writethrough > > - *readahead -> cache=fi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pj2MJ-00Czox-6T
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Add new options to Documentation
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Sun, Apr 02, 2023 at 04:07:51PM +0200:
> > So, mapping of existing (deprecated) legacy modes:
> > - none (obvious) write_policy=writethrough
> > - *readahead -> cache=file cache_validate_open write_policy=writethrough
> > - mmap -> cache=file cache_validate=open write_policy=writeback
> 
> Mmm, why is that "file"? To me "file" sounds like any access to files is
> cached, whereas cache=mmap just uses the cache if mmap() was called, not for
> any other file access.

The semantics are slightly different but I don't think anyone would
mind; mmap was introduced as a way of having minimal caching but file
caching + /sys/class/bdi/9p*/max_bytes to 0 should be almost identical
once we've made sure our cache code sends bigger than 4k writes at a
time (I *think* that's still a problem and there was netfs work in the
ways, but you'd have noticed?)

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
