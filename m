Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 658179B9CC3
	for <lists+v9fs-developer@lfdr.de>; Sat,  2 Nov 2024 05:00:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t75Iu-00059G-MW;
	Sat, 02 Nov 2024 04:00:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <post@fsrc.net>) id 1t75It-00058k-G9
 for v9fs-developer@lists.sourceforge.net;
 Sat, 02 Nov 2024 04:00:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EF9PGugES1QmUCUpkeDHWf1I2Myr0gbfSaXqUjDJ078=; b=K2NbfSK71ofgliGr7Mdtwx2dLK
 GJ9DiqZQzSnh+zqPkAebohyvexmslgOkhKG+IAuBuBXMoJioTkg01Uuxl7Z7F962tE33muDmCzw7/
 Az3Wis+XvRhh9M3r/KYajN9FYwgllhC8M2Fbu6mlCE+s6IFlRiyeIO5JjvyoU4kQHzFg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EF9PGugES1QmUCUpkeDHWf1I2Myr0gbfSaXqUjDJ078=; b=P
 yW8dvpXL+1Icr/UOC7MUV1uBbrpnG2Qr/J3sPNMJ6r8isrMVl3wukQctCP7AJtd8XkGrUovbOCgWv
 uySi3vYKCDMpyabUi+ppsWBKnPAZAgWYsZTb+1yGTwIl8tKypXcLnpNRT/yL1FfFsOaihV9qLiYFo
 EuTTPcts3rocc6kQ=;
Received: from [91.218.67.11] (helo=kernelhost.info)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t75It-0000uY-Fa for v9fs-developer@lists.sourceforge.net;
 Sat, 02 Nov 2024 04:00:00 +0000
Received: from fsrc.net (dynamic-176-001-006-061.176.1.pool.telefonica.de
 [176.1.6.61]) by kernelhost.info (Postfix) with ESMTPA id EA06F14F5C5
 for <v9fs-developer@lists.sourceforge.net>;
 Sat,  2 Nov 2024 02:44:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fsrc.net; s=default;
 t=1730511890; bh=EF9PGugES1QmUCUpkeDHWf1I2Myr0gbfSaXqUjDJ078=;
 h=From:To:Subject;
 b=YAXPDCJnG1ujtOIQ7YICRZsvVKpAMne+AbFBynRJD9c62Qoh8Xbs8RbcYgCPDbqxw
 rwegcNaLzRiGoxCEueCVBb1UtU30KNQIkItsmoKnkC01u2G3sPp7jRZMln6Me2EprB
 GkWShKRXVzRXetjuVAiecAD9oF+a3hLZHOt5lViOX62to9vOL0D2iiqp9NKao/hlBC
 tdXQES2xRJHnYj+iFSaW6GmEqK7lVhroa17vOenXx6CjvknQ9eanm4Of7djY0vI2uW
 ZRFDeOr7NPGIABqisiyEYafP+m7kE9lzs9dgGpbf2T0pv/G9L1YrXrSJhag53KdIGg
 sqyz/mg1P6eRw==
Authentication-Results: kernelhost.info;
 spf=pass (sender IP is 176.1.6.61) smtp.mailfrom=post@fsrc.net
 smtp.helo=fsrc.net
Received-SPF: pass (kernelhost.info: connection is authenticated)
From: post@fsrc.net
To: v9fs-developer@lists.sourceforge.net
Date: 02 Nov 2024 02:44:48 +0100
Message-ID: <20241102024448.534C76CAE94A3CA1@fsrc.net>
MIME-Version: 1.0
X-Antivirus: Avast (VPS 241101-4, 11/01/2024), Outbound message
X-Antivirus-Status: Clean
X-PPP-Message-ID: <173051189022.14420.17744435444602453081@kernelhost.info>
X-PPP-Vhost: fsrc.net
X-Spam-Score: 7.9 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Trust Financial & securities Services 432 16th St NW, Atlanta,
 GA 30302-3965 Email: imf.org@mail2Director.com Payment CPC Code
 CON/FT0/990/651/
 UNPAID FUND 2023. Hello Beneficiary How are you doing today? I hope everything
 is well with you. This particular letter is strictly confidential and Urgent
 only for your perusal based on message we sent to you last week, Till now
 you ha [...] 
 Content analysis details:   (7.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [91.218.67.11 listed in psbl.surriel.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [terryglenn398[at]gmail.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [91.218.67.11 listed in wl.mailspike.net]
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 ADVANCE_FEE_4_NEW      Appears to be advance fee fraud (Nigerian 419)
X-Headers-End: 1t75It-0000uY-Fa
Subject: [V9fs-developer] Trust Financial & securities Services !!
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
Reply-To: terryglenn398@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Trust Financial & securities Services
432 16th St NW,
Atlanta, GA 30302-3965
Email: imf.org@mail2Director.com
Payment CPC Code CON/FT0/990/651/ UNPAID FUND 2023.

Hello Beneficiary

How are you doing today? I hope everything is well with you. This 
particular letter is strictly confidential and Urgent only for 
your perusal based on message we sent to you last week, Till now 
you have not reply back regarding the notice. Well, our office is 
contacting you based on an important issues about Contractual 
/Inheritance payment which you suppose to receive since long time 
ago.

However, we are surprised to receive another application this 
morning from your representative, Mr. Klaus Muller, stating that 
you authorized him to transfer the funds to his bank account in
Germany and that you were recently involved in an auto accident 
and presently hospitalized.

Could you please confirm immediately below bank details if you 
are aware of this new development from Mr. Klaus Muller.

Deutsche Bank, D-45138 Essen, GERMANY
Kontonummer: 056097900
Bankleitzahl: 59070070
IBAN: DE75590700700056097900
BIC: DEUTDEDB595

Please if you are not aware of this this changes from Mr. Klaus 
Muller, You are advice to contact below Office of Paymaster 
immediately through his contact details below.

Dr. Raymond Mcniel
Email:  imf.org@mail2director.com

In other to avoid mistake while transferring your overdue payment 
to you, Confirm above account details our Officer finalize with 
transfer payment to above account Mr. Klaus forward to our 
office.

Yours sincerely,
Mr. Terry Glenn
Financial Services Regulation Committee
United Stated Of America

-- 
This email has been checked for viruses by Avast antivirus software.
https://www.avast.com/antivirus



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
