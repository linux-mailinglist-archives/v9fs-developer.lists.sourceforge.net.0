Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF42625E89
	for <lists+v9fs-developer@lfdr.de>; Fri, 11 Nov 2022 16:42:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1otWAP-0003Sr-Qi;
	Fri, 11 Nov 2022 15:42:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <currency1000000@gmail.com>) id 1otWAL-0003Sc-Dw
 for v9fs-developer@lists.sourceforge.net;
 Fri, 11 Nov 2022 15:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qwajhoYO4BTZrs1KQ9gbjpM/bG6OnBpfPOqsnd7QyJE=; b=TbyI7kIHjTVemxc5m7PmmKqG8T
 MkMsVRbmL1Qf6LWxvdn6++g2Y2/JxxLg+U8x17pYAAphY27c8gGVNw1chC5adzs00agC0eSb7nVEr
 TAvPidaZ4Gi9W0haqHpu+vr+zsW9guGSj/A8VOttdaNFmVCYH7mNw/9ddOXTEbtoGQY8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qwajhoYO4BTZrs1KQ9gbjpM/bG6OnBpfPOqsnd7QyJE=; b=T
 7F6VcUR1UzBXPAMvI6x8nEpH8AV2X2oGs+GVEWdoGASXKz1wkA9/l4rZUX0XnCZVViX46zrHRB/OY
 wx9zhJlaHkRhiCWN50bMDu3zo2eW/3js9sC2P2//BoE0gDx+Wa4smFIimkmo/wTt1/Nw8owje1VrG
 Ca8ByL85JbKQxMrk=;
Received: from mail-ej1-f49.google.com ([209.85.218.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1otWAG-004Sna-Pl for v9fs-developer@lists.sourceforge.net;
 Fri, 11 Nov 2022 15:42:01 +0000
Received: by mail-ej1-f49.google.com with SMTP id t25so13362807ejb.8
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 11 Nov 2022 07:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qwajhoYO4BTZrs1KQ9gbjpM/bG6OnBpfPOqsnd7QyJE=;
 b=Uu1U96VDn4hZIwqVJcgdyREpQvxy6Nn5udmCaIIjn/vHluWPb/goU0hUTLSlt3x7c3
 hmfgsDLKhmI76RS9Dj66UEcZD2HjIgfKDwUX8+Iz+MmX8mO6S5ur7yvK6DO5qQeOnw/g
 omflLc3HExjfkKFR+6TJf59ANkFPtZSIbpV/VAfykqltxQ3ySk9Qwr9dEWnEyUNphzFW
 8xmnjfrGpb8DI5ORs6lbQTO+VamzVPNQR39B0PFEcuEZM5hmgrNAZ8e5GSc0yERAnS12
 8vaV/seiKbKS8cSY9KrCmQupvyvCLfurayYXUTLDLDLOkXErZ+eTr5P6iE2iNNINWu5i
 bxZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qwajhoYO4BTZrs1KQ9gbjpM/bG6OnBpfPOqsnd7QyJE=;
 b=FlQ9TVi5ej/BLDzyy5qByBxTsDpC/0Z5j9/b9UXCP+l/GcHzlKE5SV+nHgv3KpKPMp
 e6iekaaoHdv46lYoZJgHYHs6RQvCPRemZ5NxBoBUj3ZYZiNNyTnCX2SCCKnqutuomIRX
 0Dgg9AyhXzQRUPMlonU4AqM+qjah/EqOOJ7Cm4Ak+9hpQ875wTdxSTfHcURYYTDG+Gkh
 gHu93nOwy6W52oCvhObGMIuVhMHn52h8Um2mJNryVGE9kA9GLpr+0u8HQfI7LbwEk+pO
 +ZdNld/MQJvdnsKoJImEtLVg4HNze65z+EMSN0t98/GWzDGlv+kyBsSsMVN4nEAFGSa7
 JWTg==
X-Gm-Message-State: ANoB5pl25Ar4qKKHcLEudTiUDUYw9/YeRtxjaruzJ6drYMGXWZycNd57
 4Uw3Nx4WPzRVUnSUD0gykzL4mT0mv4nSOp/6LwbPumJb
X-Google-Smtp-Source: AA0mqf6IfnZJqi9rmZjaSOiU9cpeqdF7+N4XYYa4L9pSTdHC/EOKrx9hk8fJ3KpUZifYYxvBgk4gmiwPQqNmE4LZFAk=
X-Received: by 2002:a17:906:5959:b0:780:8c5d:f86 with SMTP id
 g25-20020a170906595900b007808c5d0f86mr2236692ejr.391.1668181310093; Fri, 11
 Nov 2022 07:41:50 -0800 (PST)
MIME-Version: 1.0
From: CURRENCY <currency1000000@gmail.com>
Date: Fri, 11 Nov 2022 17:29:35 +0100
Message-ID: <CAPqfnSEdNe2pM0G=u1eWqzy21kVnWy2+g0_3zzPuTXwT-X75Tw@mail.gmail.com>
To: v9fs-developer@lists.sourceforge.net, golapraj@gmail.com
X-Spam-Score: 5.3 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: DID YOU SEND MR. MARK JOHNSON TO RECEIVE YOUR TRANSFER TOTAL
 AMOUNT $15.8M USD FROM THIS OFFICE? If not, Contact ACCESS BANK BENIN, to
 receive your transfer $15,800,000m USD deposited this morning. th [...] 
 Content analysis details:   (5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [currency1000000[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [currency1000000[at]gmail.com]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [currency1000000[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 2.0 HK_SCAM                No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 2.0 MONEY_FREEMAIL_REPTO   Lots of money from someone using free
 email?
X-Headers-End: 1otWAG-004Sna-Pl
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] DID YOU SEND MR. MARK JOHNSON TO RECEIVE YOUR
 TRANSFER TOTAL AMOUNT $15.8M USD FROM THIS OFFICE? If not,
 Contact ACCESS BANK BENIN, to receive your transfer $15, 800,
 000m USD deposited this morning. this is your final chance to receive your
 compensation payment of $15.8m today. Be a lucky today to receive or lost
 to Miss this opportunity. CONTACT AUTHORIZED BANK,
 TO RECEIVE PAYMENT TODAY. ACCESS BANK BENIN. Email-
 accessbankintlplcbenin@gmail.com Phone number,
 +229 99063939. Contact BANK and confirm your transfer today ok. Please Donot
 forgotten,
 the only money you are required to send to ACCESS BANK BENIN is cost of your
 transfer fee,
 $25.I assure you receive your transfer by installed. Remember my efforts.
 MRS. MARY B. GEORGE.
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
Reply-To: currency1000000@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DID YOU SEND MR. MARK JOHNSON TO RECEIVE YOUR TRANSFER TOTAL AMOUNT $15.8M
USD FROM THIS OFFICE?
If not, Contact ACCESS BANK BENIN, to receive your transfer $15,800,000m
USD deposited this morning. this is your final chance to receive your
compensation payment of $15.8m today. Be a lucky today to receive or lost
to Miss this opportunity. CONTACT AUTHORIZED BANK,  TO RECEIVE PAYMENT
TODAY.
ACCESS BANK BENIN.
Email- <Email-pm.music1111@gmail.com>
accessbankintlplcbenin@gmail.com
Phone number, +229 99063939.

Contact BANK and confirm your transfer today ok.
Please Donot forgotten, the only money you are required to send to ACCESS
BANK BENIN is cost of your transfer fee,$25.I assure you receive your
transfer by installed.
Remember my efforts.
MRS. MARY B. GEORGE.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
