Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C8C5AC30B
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 08:43:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUjLW-0005S9-Gv;
	Sun, 04 Sep 2022 06:43:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oUjLV-0005S3-OV
 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 06:43:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XUxJ04rfDRvv6seKolK+ZMqlBB2QN+5n0YBdPSmBOW8=; b=Q29L64GjFEWs5Rco50CW/ozxPm
 TfcCrKwS1GvFN3x0pe+H6BrcpBfy5GPgXTV6vNco+/GRuXwgKKU4ZGQUGO2AFZ2oFzwFELyV5tJgi
 +oWV475qSiIzQ9DK5UCDkBhLwkQexBjqTmThsw5eqtxO0xfmlrx0tentLYhuzxcTA200=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XUxJ04rfDRvv6seKolK+ZMqlBB2QN+5n0YBdPSmBOW8=; b=Rd6/m/9e/q3+JczeL2vq9gtanQ
 4M2moCjoFyAK0n+w4P2opzymKzj/Uy00NsF4i4DEE/INquT4m6Er68exVElK1F17XJ4OHbCyOcFBq
 O3a2An+EgOKyghuB5OzEjFXXtIpVRhX5dthvVbqWXqdTGx+sxbjcDL1WCTszzF/4+x6I=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUjLU-00DZw9-TT for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 06:43:05 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 2E453C01D; Sun,  4 Sep 2022 08:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662273778; bh=XUxJ04rfDRvv6seKolK+ZMqlBB2QN+5n0YBdPSmBOW8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZGXLq7MsxbAYij0mul8f4yq+/7C2R36x/VNclc+hNnlS71XDQbntLETX4zT35ypzU
 pPdoWc2UzcxaM08ERVdKiaRFKzC+xlCpXa9UOfS5Yo/L38n5WLLm4Wcwafk1AxN3MK
 m8CHnlJGKvsYdVQe3Vmv37tAwtY/McNfjBO0Bbo0FZ72ogytVxdCtkUcXchqvRkkOX
 ug5APh39ayttlgk7ITma9VEine8deUDmUFo5Pefg/Io56n89QJXgH789I90EH3wY6y
 lh1Vci01u3vUtM8PxuHTTh0U0BNYsRds95QGM1Yzrtu5QxYn2g6eYnIG48thU273YI
 qqwgltawk0K/g==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 845E6C009;
 Sun,  4 Sep 2022 08:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662273777; bh=XUxJ04rfDRvv6seKolK+ZMqlBB2QN+5n0YBdPSmBOW8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ti3HpvPS4J5cpUncPFp3ngayKhAZY9WCaXJBpCFBtVi3620Kz+hbad14wicvk586K
 H83HvlddU8HZ91zmI2RFvF5UhQa7mCwf/TwvspbASEmcsxh3DWVbC0ovIqnQcnn2zT
 NfziNWplw6rdiMRpVRjzCyBqZEpee6VWXTawtdEzh8NbwTDNKK8zAelCRxiNGreZ6u
 7K0SWZpLP8v2Gu5O4QDb0Ns/IS9mESlVTed87rNTrPfXx48S4ZiQRwGv8HqpNFa7OH
 X3xtmsxiksd2MROkdqE5oZ03iYQFX8mqwIqtgkJfceqylxt5bMJZaX8akm70P7Y5+q
 QghXKmhFMqLqw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id b43ef3ff;
 Sun, 4 Sep 2022 06:42:52 +0000 (UTC)
Date: Sun, 4 Sep 2022 15:42:37 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YxRI3Z0k8tOm9IlD@codewreck.org>
References: <20220831180950.76907-1-schspa@gmail.com>
 <Yw/HmHcmXBVIg/SW@codewreck.org> <m2bkrz7qc8.fsf@gmail.com>
 <2739602.9NfmOOc9RC@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2739602.9NfmOOc9RC@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Sep 01,
 2022 at 05:27:53PM
 +0200: > > > If you have a test setup, would you mind testing my patch? >
 > > That's the main reason I was delaying pushing it. > > > > I [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oUjLU-00DZw9-TT
Subject: Re: [V9fs-developer] [PATCH] p9: trans_fd: Fix deadlock when
 connection cancel
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
Cc: lucho@ionkov.net, Schspa Shi <schspa@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Sep 01, 2022 at 05:27:53PM +0200:
> > > If you have a test setup, would you mind testing my patch?
> > > That's the main reason I was delaying pushing it.
> > 
> > I have test it with my enviroment, it not hang anymore.
> 
> Are you fine with that Dominique, or do you want me to test your linked patch 
> as well?
> 
> You can also explicitly tell me if you need something to be reviewed/tested.

I've just resent both patches properly; that should be better for
everyone. It can't hurt to get more tests :)

I don't think we'll catch anything with Tetsuo Handa's other two fixes
as we don't really test trans_fd all that much, so I'll give it a spin
with ganesha on my end when I can find time.

Thanks!
--
Dominiquem


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
