Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E35A56D1B1
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Jul 2022 23:54:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAet1-0007BX-Uc; Sun, 10 Jul 2022 21:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mar.ste@gazzettait.com>) id 1oAet0-0007BR-NY
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 21:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Reply-To:Date:From:To:Subject:
 Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mVxRC/unDlNauaT41zUb7MMZVW5penVBSy5cqnMFfEY=; b=TzH7TmTuBoXP9VUwR0R9mhsjET
 1vrE+OWnscmx26F7pdI5X6JbwtxUQfcADbrYkmH2+6t+psOtxigfrbBjO9iEOX6WlNynKwNZ8DpES
 eKAMN/6Jfhp4sGiTCqqXc+R96DwjRbrWOYqoyooW45YaWSBgfJQ00fkxkwRjLfoiNr78=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Cc:Content-ID:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mVxRC/unDlNauaT41zUb7MMZVW5penVBSy5cqnMFfEY=; b=N+E5PNLI3wsAPBFbgWhnqfuSaU
 egCjPPrWuSMjGppbgDoG+cZ+sMwAxZ3AQgkd8q3qwz0NGfPosp19gpf2DBOsdXUEzZr8KR74wqxXD
 xd/qV5EgkaxiIaGwdSDMB6/mKBWcBvSPDx0OsKwagGdeAm1nMrgqV9p9mxkFwVboW1v0=;
Received: from absceraw.gazzettait.com ([45.141.237.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oAesy-00DDiE-La
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 21:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=gazzettait.com; 
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To:Message-ID;
 i=mar.ste@gazzettait.com; bh=WUPTBNCY7DKAhAMRCEhYI8mxbak=;
 b=QQDvzfoIWiI51rjj885ZhQMQD/SNugDatuCLs9E3r9YKw6/Mn240gtdqxR1enF8dDlIEVrTSzDju
 Q3ycQKYIbARRbXs455Fa461GshBYEL5YfalYPXmSp+xeqswJp2V9UmUEkFpLHvLmUp6Zvgq6Wg8K
 gTEDwuW2DXeKIL3SQOHieBa6aROGIQCCtmR7sNhSe4CZVRNyXk88Yhmzdr6zJr61d96wUKvKeb5L
 WeBOkcjOha0niMrB9F/4dqwiukO2uJfE+3xKejwOPQL7ITLnzwd1cDyScwMKpm+TmMfzcvYFDAJH
 PELGjSf+6ADQx4iJjZZmwcSht/KrH103qy/inw==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=gazzettait.com;
 b=X+ao88UIV4+e/s0kyHgIhvaZcG9f4Ao5KQ8u974uqu7hUeGUUHs8+1JRgXXC+EXCtFWOjoXYwMIT
 YZPNmQZEz3TTCDR0NDHY5RMBrr0sVuVgRztLpVw9Qa3Yr1l73mDzE2bW5SNjC5c5Fv6xvmI6Rx9M
 8STEuH21g6+MA/B27a4JGEtEDeghFSdloN5uVtf9iWmAfvy6CprJ8eL0GXLnuKL5k/BE9mIgaMCG
 DEY6JyrQVME6Z/ulzWuAOCG6zpx67yiL0tN3zv8WNCDKEg2OZi6OMmFQlyx9mTFf/7OFD0q2MtwC
 i0f7SX2HlpUelFRbcVgHZmELnf5LtSkxTiNFYw==;
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "Julio" <mar.ste@gazzettait.com>
Date: Sun, 10 Jul 2022 14:54:28 -0700
Message-ID: <0.0.3.A52.1D894A7A08F92EA.0@absceraw.gazzettait.com>
X-Spam-Score: 7.6 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Good Day I'm Julio Bologna, working with A Laboratories UK
 Ltd as a research consultant.. I have a business proposal that would interest
 you on this, Kindly contact me for full details. bologjulio@gmail.com 
 Content analysis details:   (7.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_MALWARE      Contains a malware URL listed in the Spamhaus
 DBL blocklist [URIs: gazzettait.com]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [45.141.237.93 listed in zen.spamhaus.org]
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: gazzettait.com]
 0.1 URIBL_CSS_A Contains URL's A record listed in the Spamhaus CSS
 blocklist [URIs: gazzettait.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oAesy-00DDiE-La
Subject: [V9fs-developer] Proposition
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
Reply-To: juliobol@laboragt.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Good Day

I'm Julio Bologna, working with A Laboratories UK Ltd as a research consultant..

I have a business proposal that would interest you on this, Kindly contact me for full details. bologjulio@gmail.com



Thank you.
Regards
Julio Bologna


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
