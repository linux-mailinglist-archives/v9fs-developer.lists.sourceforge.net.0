Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7888B7D1B6D
	for <lists+v9fs-developer@lfdr.de>; Sat, 21 Oct 2023 08:53:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qu5rB-0004mn-5a;
	Sat, 21 Oct 2023 06:53:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@scaracati.com>) id 1qu5r9-0004mb-Fy
 for v9fs-developer@lists.sourceforge.net;
 Sat, 21 Oct 2023 06:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W9KzF5IhUdyMMGdRwkvTlVSJF3cjH9gmBsNjqHNlde0=; b=RgCdnk5Rn2XpcgHxlPDvKKxx5R
 oZvxT/6ir5PkLjQtaVsVfBNFkxmSRDKMH9iy5tArz2nL/ht0fI/r/qgaHo68yCUJV/iMFRGQJ1iPm
 VegomXaSMFrJwfhveYc4u6GsCJnx4ix4bDAs2a9Wgk7LpOElFuuuSEFFhImmK/yr7vdI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=W9KzF5IhUdyMMGdRwkvTlVSJF3cjH9gmBsNjqHNlde0=; b=f
 bvPsr+BUeGRgrrpAls5Fevk4hibNuynWJ9JNK5emKtsJELZWwuGLaSJ2WeggHkj7p8u16jKJQC0Ky
 7/neSD8U69LrLlMnYNzlqHaB0JdKJTIkXOIegarqdVNC7XqOpeyqf0IfuFHAxoRcWHs5QsxHCcClP
 ZFXFXrhxeqIuP8i8=;
Received: from clear.scaracati.com ([88.209.205.249])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qu5r8-0003SA-M1 for v9fs-developer@lists.sourceforge.net;
 Sat, 21 Oct 2023 06:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=scaracati.com;
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id;
 i=info@scaracati.com; bh=Yqr4q+L9vkK14ANZCq1CnHZK8K0=;
 b=BnRvO29apBURoJRKJpcscsdlRm1+yRebMgJdMSUDgrmRJDnFcqVW9X0//LoPYNSmhpjCDrGceEJe
 zBtagpvxkdjWosyttf0gDbGel+lfh2QMjYCcaW/wbN8TLVu2iBJ9LfouVdBXp2X4pb4189+NcurV
 wsXb6gHcLvF0e/P3qSE7bstWhMs5DRTvRYTTi9XWnnyCQbDvcNPto5FIf4IvNWwrMNhccbG8zfPI
 crguRU2zY7+9gEEsyK6J915T/IyzBsIcpV6JzpyF4MwLCKs0+WX0DRoVhnxw8opXYnq/bjc/jzDG
 RJXoKdndsXJrYSHOP0d18IiXKZFfurfmUkBLSA==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=scaracati.com;
 b=GP9/BXNknbTFDwR7FDJ79tTOqZmxTz5Z2f6xWgRlBmVgpVNB03fV5w+N0q/6xsPxGjIeup6/IyBo
 UK2sHqEh9VdLz4kjSkS6H2wHv2gZmuTWDD3PHZdzH51877ro8Zjp3ar6iubsVQOqE0ILrQFPYPan
 Bse9BEVyPCZcU2lAiIob1WIgclYLV7W3HDJunNBbli6zrzJhGDtcrww6J9E9ogJJQlk3F59Q5WPr
 +zFFsevKm6GQ8zXwdqaVtxPFQ4hmX6VTe1cn0RvJqS8NEomhNi1in8XmeIxAMii3MTSFhNwcSBrA
 EuXND9FRG/UK3OiFf6xTnfP0CUWBA3rFd9RUBg==;
From: "Lists server notification" <info@scaracati.com>
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Sat, 21 Oct 2023 06:52:59 +0000
Priority: urgent
X-Priority: 2
Importance: high
Message-Id: <2159202310520657348D319A$6086CB4FF9@scaracati.com>
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Valued: v9fs-developer,
 We are upgrading our webmail software.
 Your action is required to upgrade the webmail software of your email. To
 avoid any interruption in your email service, please upgrade your webmail
 today Saturday, October 21, 2023. 
 Content analysis details:   (7.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_MALWARE      Contains a malware URL listed in the Spamhaus
 DBL blocklist [URIs: scaracati.com]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?88.209.205.249>]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [88.209.205.249 listed in zen.spamhaus.org]
 0.1 URIBL_CSS_A Contains URL's A record listed in the Spamhaus CSS
 blocklist [URIs: scaracati.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qu5r8-0003SA-M1
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Pending Message Notification For Lists
 id:vwpTCoo4_ v9fs-developer
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Valued: v9fs-developer,
We are upgrading our webmail software.

Your action is required to upgrade the webmail software of your email.
To avoid any interruption in your email service, please upgrade your webmai=
l today Saturday, October 21, 2023. =


Email Update https://tcUgMtZn.arhock.org/?email=3Ddjlmcy1kZXZlbG9wZXJAbGlzd=
HMuc291cmNlZm9yZ2UubmV0

Sincerely,
=A9 Lists. All Rights Reserved

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
