Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B533069B8A3
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 09:05:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTIE8-0005yC-EQ;
	Sat, 18 Feb 2023 08:05:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTIE5-0005y5-U2
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:05:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OAFcUBrsFSt/oLsR9EX7XJPu+XPQ3u8XJHEt8p0SO6k=; b=fgYJ/K8DvxVdey+GYZRnO8Jm6a
 GXkPn88NoZ7EN+tXfMsJP0LWpjHwxdJUmHi1tn089hjthO7YUOwRcDu0/MB9f1XOwLn2ydJirsuGj
 /v8bv90z9FMOcc77umbNDFPJe8EnrC1hIbjEchKD01YzKJ+QF/3ySJna8B/JzSQucOAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OAFcUBrsFSt/oLsR9EX7XJPu+XPQ3u8XJHEt8p0SO6k=; b=Pyr+Ek9Z8ldP6umBdqLUKNe9gH
 YcX8bEsg4qKubFYS05B0urVHU5JElG9I2Ccv7yFmz4HpYcampDLpCHyrJP+8N0WV7PbpHHYG/LFBZ
 ovjcNxrTO5JeITH4ur1MBqRXytytgKYkusGej+3NldVIkMiM3MrpTV7EvdclVDNZ4+WI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTIE3-0008Jp-Hw for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:05:44 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D5ACAC01C; Sat, 18 Feb 2023 09:06:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676707561; bh=OAFcUBrsFSt/oLsR9EX7XJPu+XPQ3u8XJHEt8p0SO6k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t4o7yZ0dQS0w/9C742EN6EZy3polnQtnWPv3DhkBLu2PWmWTPxvhXV6CYW+ZIKYQb
 NMbERoFfPK3EXtTFk/TfePHaKmJCP6liTcAC9BFCDLd1GB9VPjJJiUPcxk4VsXO45p
 QVvwvAi/PckB3N58LuzcOH7zR9qsb1TIh9qU9SYq8IEOH5TcJL5ZoaIEUTtF9nFDCc
 sbwG+dvkVa2iMX/LGoB0ng1c6hrqpb/lHI0LnfJWd94IBRaKhFLTWdwm2jXvO8mFVa
 rMfywRxcUD9mdfwm6PfGha0TxXZpANhmjO96P4GbCzumjfQb90K7bd+TQco2dF6wx5
 3Ej7embvrv59Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 53958C009;
 Sat, 18 Feb 2023 09:05:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676707561; bh=OAFcUBrsFSt/oLsR9EX7XJPu+XPQ3u8XJHEt8p0SO6k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t4o7yZ0dQS0w/9C742EN6EZy3polnQtnWPv3DhkBLu2PWmWTPxvhXV6CYW+ZIKYQb
 NMbERoFfPK3EXtTFk/TfePHaKmJCP6liTcAC9BFCDLd1GB9VPjJJiUPcxk4VsXO45p
 QVvwvAi/PckB3N58LuzcOH7zR9qsb1TIh9qU9SYq8IEOH5TcJL5ZoaIEUTtF9nFDCc
 sbwG+dvkVa2iMX/LGoB0ng1c6hrqpb/lHI0LnfJWd94IBRaKhFLTWdwm2jXvO8mFVa
 rMfywRxcUD9mdfwm6PfGha0TxXZpANhmjO96P4GbCzumjfQb90K7bd+TQco2dF6wx5
 3Ej7embvrv59Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id fb6f5d93;
 Sat, 18 Feb 2023 08:05:32 +0000 (UTC)
Date: Sat, 18 Feb 2023 17:05:17 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CGvTCyhjFITkFs@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-8-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-8-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:19AM
 +0000: > Add some additional debug flags to assist with debugging > cache
 changes. Also add some additional open modes so we > can track ca [...] 
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
X-Headers-End: 1pTIE3-0008Jp-Hw
Subject: Re: [V9fs-developer] [PATCH v4 07/11] 9p: Add additional debug
 flags and open modes
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

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:19AM +0000:
> Add some additional debug flags to assist with debugging
> cache changes.  Also add some additional open modes so we
> can track cache state in fids more directly.
> 
> Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>

New debug flags can't hurt.

For open modes: don't we send the mode verbatim to servers? won't they
be confused?
I guess I'll see in the next patch if you trim it down, but we might
want to add a P9_MODE_MASK or something with values we're allowed to
send and have client.c filter it out?

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
