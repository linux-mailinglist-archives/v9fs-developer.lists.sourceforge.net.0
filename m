Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B296B793A
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 14:42:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbiRp-0000rv-6p;
	Mon, 13 Mar 2023 13:42:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <email_feedback_handler@mta-inbound.cluster3.convio.net>)
 id 1pbiRn-0000ro-87 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 13:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:Message-ID:To:
 Reply-To:Sender:From:Date:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EkelDJF45mk6LO+QNXNfaicuUqSckPHUlF/Sq6s9cQA=; b=Gv0+c9pR1VsTKp1ZUm30A1HOYp
 46JjrCJJZf1bjgBGNwpkZomc8Wh4VnBtc6/j6AUcV7NmQu5gJFJit9ps9OLTxtYNy4VaeATljGdjF
 S5rCpT1TPQ4lSmk889A/btd0zPVBgeKJ2HynwUmXdszZdqoLjPUir6DFluALIRBXQlow=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:Message-ID:To:Reply-To:Sender:From:Date
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EkelDJF45mk6LO+QNXNfaicuUqSckPHUlF/Sq6s9cQA=; b=b
 OtPddh7YAK5IwS6CTQjDhjL4lzWGhaUdmkEXl41/mnVJwh3jOZYOXsdrKzExDQnxcEnH2LgPyh0O9
 iT623bUYWvxpjuyZehu9mDGiihjKtVBzo+V8qv8Qb8nvB/sYvIOuJYgX+I/yIShKOU9MRZnpRrPnz
 I3+GpE9o4luqKl+w=;
Received: from mta-c3pooltaf.cluster3.convio.net ([216.235.195.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pbiRm-0000En-Vz for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 13:42:43 +0000
Received: from 10.0.31.225 (10.64.82.128) by mta-c3pooltaf.cluster3.convio.net
 id h1sk5620dd8h for <v9fs-developer@lists.sourceforge.net>;
 Mon, 13 Mar 2023 08:42:34 -0500 (envelope-from
 <email_feedback_handler@mta-inbound.cluster3.convio.net>)
Date: Mon, 13 Mar 2023 08:42:33 -0500 (CDT)
From: Jennifer Brown <donations@hamiltonhealth.ca>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <832582173.77021678714954247.JavaMail.www@app30128.cl3int.convio.net>
MIME-Version: 1.0
Organization: Hamilton Health Sciences Foundation
X-TAF-Origin-IP: 102.215.253.76
X-Gateway: c3poolcons
XData: 1010,nKy@4MnQ9nM@neKt@7wFTj5jdwxTfcxTcF
X-ConvioDeliveryGroup: poolb
X-Spam-Score: 5.5 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: My Name is Miss Jennifer Brown. I would like to inquire about
 your services to be my foreign partner/investor and help me transfer and
 manage my funds by investing in profitable ventures such as buyin [...] 
 Content analysis details:   (5.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.235.195.152 listed in list.dnswl.org]
 0.0 CK_HELO_GENERIC        Relay used name indicative of a Dynamic Pool or
 Generic rPTR
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?216.235.195.152>]
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [216.235.195.152 listed in bl.score.senderscore.com]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [jennybrown0111[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_IMAGE_RATIO_08    BODY: HTML has a low ratio of text to image
 area 0.0 HTML_MESSAGE           BODY: HTML included in message
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1pbiRm-0000En-Vz
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Greeting my beloved,
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
Reply-To: Jennifer Brown <jennybrown0111@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


My Name is Miss Jennifer Brown. I would like to inquire about your
services to be my foreign partner/investor and help me transfer and
manage my funds by investing in profitable ventures such as buying
company shares or Properties in your country. I have a reasonable
amount that I inherited from my late father, as I would like you to
help me invest in your country.
I am attaching my personal photos, proof of payment of the fund, my
international passport, my late father's death certificate and a four
page will from my then dad. I send you all this so that you can trust
that you are dealing with a real personNote: Below are the main reasons
I am contacting you.(1) To provide a new empty bank account in which
these funds would reside. if you do not want us to use your personal
account.(2) Acting as custodian of this fund because the bank insisted
that their agreement with my father was that I get a foreign partner
first to release the fund.(3) To make arrangements for me to come over
to your country to promote my education and to obtain a residence
permit in your country.Please reply as soon as you have read this
message for more information and evidence.Sincerely,Miss Jennifer
Brown.



Please visit Hamilton Health Sciences Foundation today!




<p>

<a href="http://events.hamiltonhealth.ca/site/TR?px=1199701&pg=personal&fr_id=2363&et=4gMW9_jXLEyQGsYMlASjEtdwz3dSSynil7bz0HXnogZHuEfY7Mp2kQ">Click here to visit my personal page.</a><br />

<span class="Smaller">If the text above does not appear as a clickable link, you can visit the web address:<br />
http://events.hamiltonhealth.ca/site/TR?px=1199701&pg=personal&fr_id=2363&et=4gMW9_jXLEyQGsYMlASjEtdwz3dSSynil7bz0HXnogZHuEfY7Mp2kQ</span>
</p>



<img src="http://events.hamiltonhealth.ca/site/PixelServer?tr=jchfFmyn43h9wSLWE7Lv3u95tc0jWuSpMnqgd-NohQcg2SY7FlSR0g" height="1" width="1" alt=""/>


<p>If you no longer wish to receive email messages sent from your friends on behalf of this organization, please follow the link below:
http://events.hamiltonhealth.ca/site/TellFriendOpt?action=optout&toe=dfc2352cb11c9e976146b22da3ef0ae384956814b6dced0ad260df3f46b6246d9ecb6ff6074bacdc</p>

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
