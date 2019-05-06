Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFB31433D
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 May 2019 02:42:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hNRhj-00023V-0M; Mon, 06 May 2019 00:42:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <desarrollo@ccomercial.com.co>) id 1hNRhf-000239-Ng
 for v9fs-developer@lists.sourceforge.net; Mon, 06 May 2019 00:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WN6yIFOwPPyZf1OhJhA6YsARq7sevbP8vSFP9n4PtH8=; b=HZTCjwbDN34devw9HvqjFJIiDS
 x20gLDKQ9PF6sCw5tDCkW4djeuPWnu4FjwFUqdEHQTvWAZqJKTmIevV74ZBb/0I2RW/NznTDNMP3X
 TMwXSP9vGun0WYcBC0MyqgG/emcec42/psbeWtPeB3Bv5KaJwmCHMzyu3uNp5YHCHdCM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WN6yIFOwPPyZf1OhJhA6YsARq7sevbP8vSFP9n4PtH8=; b=i
 YL/9muHnA8cc4LuTtHbrdsgpOc9LzSkw39X9kTjR6klHB0bUwQUAZVCHxPnfEQCKvV3JLQNbU4WFB
 M3gVYrt9AoAasQm949CO2mQ0IbG3y2c696cjsBL347Zbb7zb/GZ1tc18ij6L/QJ4NKG5D5d7+GIIV
 7f6hLc0V5oGf4VkE=;
Received: from [212.83.188.139] (helo=host-ccomercial.ccomercialmedellin.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hNRhW-009sip-8v
 for v9fs-developer@lists.sourceforge.net; Mon, 06 May 2019 00:41:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=construccionesydemoliciones.com; s=default; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:Message-ID:Subject:Reply-To:From:To:
 Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=WN6yIFOwPPyZf1OhJhA6YsARq7sevbP8vSFP9n4PtH8=; b=ioHuggBPggEh
 fGvcFxfFpNpORc9VUTNs7Pur8Rk66988qf711GLdIUjlhp8DAHTB/PhUqkFPRCXgCKceHCnQJlhS2
 EeUt8jZDrM8+20whf7PF0tA9IJj4MsZ5jIQ1OIqQ7vgymuV/3Dm54pymCVhMnbFDzgjTukRWBXBSg
 bpTjw=;
Received: from [::1] (port=58708 helo=www.construccionesydemoliciones.com)
 by host-ccomercial.ccomercialmedellin.com with esmtp (Exim 4.91)
 (envelope-from <desarrollo@ccomercial.com.co>) id 1hNR6h-00599P-JO
 for v9fs-developer@lists.sourceforge.net; Sun, 05 May 2019 19:03:47 -0500
Date: Mon, 6 May 2019 00:03:47 +0000
To: v9fs-developer@lists.sourceforge.net
From: =?utf-8?Q?Construcci=C3=B3n_y_Demolici=C3=B3n?=
 <desarrollo@ccomercial.com.co>
Message-ID: <c885930250778d37264d384ad9242867@www.construccionesydemoliciones.com>
X-Priority: 3
X-Mailer: PHPMailer 5.2.1
 (http://code.google.com/a/apache-extras.org/p/phpmailer/)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - host-ccomercial.ccomercialmedellin.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - ccomercial.com.co
X-Get-Message-Sender-Via: host-ccomercial.ccomercialmedellin.com: acl_c_authenticated_local_user:
 construc
X-Authenticated-Sender: host-ccomercial.ccomercialmedellin.com: construc
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1hNRhW-009sip-8v
Subject: [V9fs-developer] Copia de: Beautiful women for sex in your town
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
Reply-To: ClintonEvace <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CkVzdG8gZXMgdW5hIGNvcGlhIGRlbCBtZW5zYWplIHF1ZSBlbnZpw7MgYSBDb250w6FjdGVub3Mg
dsOtYSBDb25zdHJ1Y2Npw7NuIHkgRGVtb2xpY2nDs24KCkVzdG8gZXMgdW5hIHBldGljacOzbiBk
ZSBjb3JyZW8gdsOtYSBodHRwczovL3d3dy5jb25zdHJ1Y2Npb25lc3lkZW1vbGljaW9uZXMuY29t
LyBkZToKQ2xpbnRvbkV2YWNlIDx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ+
CgpCZWF1dGlmdWwgZ2lybHMgZm9yIHNleCBpbiB5b3VyIGNpdHk6IGh0dHBzOi8vYWFhLm1vZGEv
YmVzdGFkdWx0ZGF0aW5nMjcyNDIKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
