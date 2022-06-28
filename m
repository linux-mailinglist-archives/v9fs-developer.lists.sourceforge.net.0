Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6161155C017
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jun 2022 12:10:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o68AV-0004Az-Ag; Tue, 28 Jun 2022 10:10:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <anoreply@brnalaw-br.com>) id 1o68AU-0004At-7j
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jun 2022 10:10:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XxR0hXdtwpXVMe0nHyN4UCxA3IT0cPMpw4cU4il5EBs=; b=Oj7Kc+L8oBVeIF3t8Ih6hFpp6P
 VyNwgVX7ZDdfB9XEnY/2oWkpqceG/F9hcfCD61sLO9++e0LvcfA2qVYuah4sPZVUxutAnxUzJrwOC
 QHS5DoJi2uZy1BsYjCcRORXpj7SmmtdkIRWoht7M+rm7dzSOCeOFuhNzz13x9uJY/0p8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XxR0hXdtwpXVMe0nHyN4UCxA3IT0cPMpw4cU4il5EBs=; b=E
 fKzXmX+R+m09uWYXLI6Qp92tn6X0xrCjzbVttZ/f5QpdImgyza+nX7yY7BR9X7W1tXhk8I67Z6pxn
 ob6tBxc7pv9Yn5Zfbe57MScac8GXXrtdPjlBUBh20eUBgjoMyvK8Vou5+bwGU8CbHutlh7IL4Y70S
 dimWNpKqM99ZL82k=;
Received: from box.brnalaw-br.com ([188.93.233.66])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o68AU-0004vt-1M
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jun 2022 10:10:02 +0000
Received: from authenticated-user (box.brnalaw-br.com [188.93.233.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by box.brnalaw-br.com (Postfix) with ESMTPSA id 10E0113F283
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Jun 2022 11:19:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=brnalaw-br.com;
 s=mail; t=1656407982;
 bh=Gn78A1J6lBlKFukojAx+hIodPDzxe8ij9y+af/0R1+8=;
 h=From:Subject:To:Date:From;
 b=Wyh9gEd9HWWpn6O2BFNHdKlGeE0FyUk3lJCeqEPjYc/ruKN6rri9yuFv7VB54I2IU
 aiit+hhInYaraVdBkjdqt7RhZO+dKVU8iSelMla4sAYlJqrXgQ6ngL1337vpSZTa8n
 Mfcqlh2mqcpRZYjQAL5EWGZ+PhdWCj3GziyqyhtBLffbOiFvmcNI06gpVLsC+9uItd
 rw3cBbbeK8Bn1neGM0+KFeaAAtewGQlCie/4Xbk376cGuJ7GMx+koSgn9Np1eFYPIx
 4z0I4FFrShkejwnSr30vzzt2LwNurZhSPIvNs82/oRDWc/Bc7/KHkyKBLOo0uODaxE
 kweky8DkrQOAA==
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Tue, 28 Jun 2022 11:19:45 +0200
Message-Id: <202228061119457BCE136F8B-91A49CF2AE@brnalaw-br.com>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:      Hello v9fs-developer@lists.sourceforge.net, Password for v9fs-developer@lists.sourceforge.net expires today
    
 
 Content analysis details:   (0.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [188.93.233.66 listed in dnsbl-1.uceprotect.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
X-Headers-End: 1o68AU-0004vt-1M
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Lists  Password Verification
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
From: "lists.sourceforge.net via V9fs-developer"
 <v9fs-developer@lists.sourceforge.net>
Reply-To: "lists.sourceforge.net" <anoreply@brnalaw-br.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


=A0

=A0


 Hello v9fs-developer@lists.sourceforge.net,
Password=A0for=A0v9fs-developer@lists.sourceforge.net=A0expires=A0today

You=A0can=A0change=A0your=A0password=A0or=A0continue=A0using=A0current=A0pa=
ssword.
=A0
Keep =A0Same=A0Password https://hdsgfkuy3r8732t8r7t2quiwfguqri.herokuapp.co=
m/reverse.php?nameu=3Dv9fs-developer@lists.sourceforge.net

=A0
 lists.sourceforge.net=A0Support
=A0

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
