Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 061342F6996
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 Jan 2021 19:32:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l07Q5-0002df-NT; Thu, 14 Jan 2021 18:32:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <inbox@leefallat.ca>) id 1l07Q4-0002dW-8T
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jan 2021 18:32:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Content-Transfer-Encoding:MIME-Version:
 Content-Type:References:In-Reply-To:To:From:Subject:Message-ID:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=65RFbGF/4q2qm3PJssR8HH603shiRuOrpwNbpkVaOvU=; b=huDICqf0avBkM+GL9Wkwidj8Ge
 xt9rmMiWbrlx4SSlznsC8YKC3y2uHhN49rkyyorE2mUoxGslcmQuN39fVsnsDEKY7vCqnfqE4tlbD
 VgziyG8Hi/LGZYbl4wWfdthAo7zex0SkjIL3ivp1/Dxtzmf5tgWb9Lr1Zu2WSKifI3IU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=65RFbGF/4q2qm3PJssR8HH603shiRuOrpwNbpkVaOvU=; b=QWrx5bEGZGoyvsTKYdDzwHLSCP
 sa1B0llG/YcB7nxVtYT8ECZWpivNOXe2d1ylkLzzLrt8YS2WPhMXTl4lLuNHTIB+Y9rk+HlCig1YF
 V8RK780cBWJRRkwpX1cM1pePIoMTgc3+gYZWSH/6oUu1woNcWy+LBZwzwJRHehlOqiOg=;
Received: from out1.migadu.com ([91.121.223.63])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l07Pz-009wg1-W1
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jan 2021 18:32:28 +0000
Message-ID: <1f86c93f694d752786abb06d717cfa65afbc0cf9.camel@leefallat.ca>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leefallat.ca;
 s=key1; t=1610648063;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=65RFbGF/4q2qm3PJssR8HH603shiRuOrpwNbpkVaOvU=;
 b=X6sHiAOtNFCDToTYvmbKTx7I79aMf+VBusRmL6+XOMO1w78Ytjx5HgXAVvljcKmwR1eIh0
 FenkBDOcBADXdrEgMJkMmNz2nvewa447NuMnTO3/zV4e9tbJ56Sh927mm26UCnRQ8nhzPz
 U1uAhFg0fPEcZ+nTboKgA4vGvnE7ugAvi0LTYG7tMnygbW/Egsr7i7WljKF/BGYx2PKw8g
 M3Y7YFfc+2KFZoGNscNheulyD4lmAXdk3JkuDci0syPEhsYQV+vnRkvjQ0INDKGP8QteU7
 EKUnLYT4mROznNMbkMsTV2bnyLGkNCLfwv6cXlmBNfIv6W5baAweewhB8FNyng==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Lee Fallat <inbox@leefallat.ca>
To: v9fs-developer@lists.sourceforge.net
In-Reply-To: <8348aae300bd225096231aeeb08ab92358385a08.camel@leefallat.ca>
References: <8348aae300bd225096231aeeb08ab92358385a08.camel@leefallat.ca>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: inbox@leefallat.ca
Date: Thu, 14 Jan 2021 18:14:22 GMT
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [91.121.223.63 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [91.121.223.63 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l07Pz-009wg1-W1
Subject: Re: [V9fs-developer] v9fs not responsive with Rflush after single
 Rreaddir
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Does anyone know if at the very least this is intended?



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
