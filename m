Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB09C5474B7
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 15:06:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o00p3-0005QY-1F; Sat, 11 Jun 2022 13:06:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o00p1-0005QS-5E
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 13:06:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yg3XVHIPgoJ44t4DpuHgig9s2UdIwMKjMb0MG6tDqPk=; b=WJ2nXDrT92EyRccRuSBY2me65V
 1H1vXqMcQs1q73QYa7YjdEHEckuLJoF5ZcZ12qOf7bAsWuaSHpQalh2eWVpQrtBrn19BgFZCtS0sC
 Agyr8Ls+u6g8ouCE82EZIf1+w9Q+bbFyvF0YVDiVxdjZ38RdKrq8kgLsOc3uNg6uvqd4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yg3XVHIPgoJ44t4DpuHgig9s2UdIwMKjMb0MG6tDqPk=; b=c2V8urWmHLqUMAkpC4FNVFSWZC
 Nbu8lZbwU4fdhdLYCE9/ObBIBDArwdFxvrH7CvRk8N5M6OjaZhg9DRtRtK2ym4U3xMGiAwnVRMNMj
 50KTA0tt6bBoE3iexwXTT8GssfQTZTytEHAC01PHaX7iyIZ/8sf2NL1DAcd2OOIqYE2w=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o00oq-00F4pB-MD
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 13:06:35 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 92CA5C01F; Sat, 11 Jun 2022 14:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1654951639; bh=yg3XVHIPgoJ44t4DpuHgig9s2UdIwMKjMb0MG6tDqPk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W82djJwO4MgIjJVV87dMcSorVAL4pLf2Bl0W3eVp1wBwRb70AN5C/lqILfPWseRIl
 G+CPVE2nOiQ20EPz33CLJDPqir7HD1s/Le86r32LuiBxQ+ZZKsQPKCOFoh+1R53BCC
 F2WaLEKoDeq8TK2UmweZokystZ6WIa5K8TrN33z6sEaJp2gp1CN9q4v/3Qhl85qBcN
 Q5VRAtu30wZ8mLl7s3+SbY8Eajxa1VTfBQ2sq4MKWKhUXuKaUVe+vj+QlJ6wNsZfYz
 vMXeZmeeC9H+gAjQVwLBv4RGDlIimk7OMkw+t7rCMrHHKY4J0FgVEb57L5g4kGOMTr
 KJuHri/7bq9zg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B1E7DC009;
 Sat, 11 Jun 2022 14:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1654951638; bh=yg3XVHIPgoJ44t4DpuHgig9s2UdIwMKjMb0MG6tDqPk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aadvztkrK50Ba661yI+TldRp8GCekyJds9Ry/po9TwJLPX9TNXnrUf+s/SoAFeqJl
 52jI1wI9tTzUsi8VpM79NlDexEDPXnjygJF0Gv996C6SRJYigP9cKJXPpTm0INgipe
 4nidcFe2rn6/4cH1SkvOzHWEwlQ+Grmvu4Opi4ybjUr6YNbaR6JavYb+5pw7ngafsu
 fRxChMKmkv0s+W1bEzCHz0YtYW64eiLuMLE+uqA3Biiy7QyqBzUAJ91TJ9Fhy766Cn
 u8djYC3vO/5F97SmSjkJae+QAHKK/nU+/OvVlTU76mG70YmDOQ6pZkVvAd0NHqTxIk
 L2ErGBk3fA3ig==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d56235ef;
 Sat, 11 Jun 2022 12:47:14 +0000 (UTC)
Date: Sat, 11 Jun 2022 21:46:59 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YqSOw+BwBbJ8WH73@codewreck.org>
References: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
 <1849605.JvGbLJQp6r@silver> <20220607034110.GA7401@sequoia>
 <7291261.iO0hoOTYzs@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7291261.iO0hoOTYzs@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Jun 09,
 2022 at 02:44:04PM
 +0200: > Dominique is the only active 9p maintainer for a while and barely
 has time for > 9p anymore (hint: implied call for volunteers h [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o00oq-00F4pB-MD
Subject: Re: [V9fs-developer] [PATCH v2 1/5] 9p: Fix refcounting during full
 path walks for fid lookups
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
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org,
 Tyler Hicks <tyhicks@linux.microsoft.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Jun 09, 2022 at 02:44:04PM +0200:
> Dominique is the only active 9p maintainer for a while and barely has time for 
> 9p anymore (hint: implied call for volunteers hidden in this sentence).
> 
> Dominique, do you have a time slice for this issue? I agree that it makes 
> sense to bring this issue forward.

Sorry for lack of replies, I've updated my mail configuration a few
weeks ago and somehow screwed up 9p mails -- I've received everything,
just never got notified...

As Christian put it so well I don't have much time, but I can take a
couple of hours tomorrow.
Will review and/or take patches then hopefully :)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
