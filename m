Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBE2A6ECE0
	for <lists+v9fs-developer@lfdr.de>; Tue, 25 Mar 2025 10:44:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tx0ps-0004fo-1e;
	Tue, 25 Mar 2025 09:44:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jonasfernando500@gmail.com>) id 1tx0pq-0004fi-BM
 for v9fs-developer@lists.sourceforge.net;
 Tue, 25 Mar 2025 09:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/q+ZairjVQQccVKimm3SAd5i2Q13gE9iRDsLzVyMa0o=; b=TBqtNXBepENoGt+54PTFc0k3P6
 R0F+dOYSR1wQWZ+BLnuVTNnrisEZzCO/awGigZIU/lbHRomglFCTb5pN8AZCNKMgGQCd+da+Pz/aA
 4IECVSqY/EBuWJD0K6hOB56hW6QEdp6z0LJJg1rtgosuDCetVQGBoZKdo4Ipmgc0MwuU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/q+ZairjVQQccVKimm3SAd5i2Q13gE9iRDsLzVyMa0o=; b=C
 rcGPB40GYd1hykmRn4ziwzdid3H2csUu3v3lu4HYka7KVQj8FVYlK1NDYNR7TEigHq46o5VjJmI+/
 VnqCuDi51d2Vu8QGDUi7Q7q7jMeb0Hm08dUYXs6kJhFaeAlN6XjobAea1FSvwJ08xG1Cgi/qQd+vs
 3DONKJvK9VDEsct4=;
Received: from mail-pj1-f47.google.com ([209.85.216.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tx0pk-0003BC-MD for v9fs-developer@lists.sourceforge.net;
 Tue, 25 Mar 2025 09:44:38 +0000
Received: by mail-pj1-f47.google.com with SMTP id
 98e67ed59e1d1-2ff6a98c638so11356598a91.0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 25 Mar 2025 02:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742895867; x=1743500667; darn=lists.sourceforge.net;
 h=cc:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=/q+ZairjVQQccVKimm3SAd5i2Q13gE9iRDsLzVyMa0o=;
 b=SxxfRmhFDnrMqKjdg/FPIaaihzUFBscB8IDQ5+tN7a+G00cyHdDhhBIkM8PyCPNS6e
 fEDMKWSGlb3htokH5wii+Dth+cVoxI69KxOKHhNnou9OGGMKAbABFGPm9MViVNPGAkia
 IbJHGRHivWuoJOVTofsBt277+v7Dz5AT+cbLVCx9B9K7yUhUEZYsGdekFHlxUPPwJ/V3
 XOMuKQdq1uhlmtRi7OJFFei5mpazIUWl9XwpQL7ZxjTcxp2e2YpAV5hXaWGw/o+8iWUN
 uHEoFtj3gPFgzAnSHWzV+kNtGptt/7hzvxZFuVff2Slx0s6gv3RyhBiYexdVu3C6eNbn
 YTNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742895867; x=1743500667;
 h=cc:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/q+ZairjVQQccVKimm3SAd5i2Q13gE9iRDsLzVyMa0o=;
 b=q4V3nkGtbU+wKlsu1DNBOC/H2sm3IRAH4e6OjbrDQz6PLlZ91Ii6SoRwXMspT675H2
 zWsxjrxcF3wk5s88V/+EaWAWQzmf8+9jXxVy3vRRfkMSQ2HvXZBJONsSsdss71mzgneA
 wsRwg13u1w17tn9qPMQ9PLvXSQnfX65+BzubETqLnS7MfJVLO5+zSleWVS4IGwaKSCdR
 n7WCo1Vfd56jWkaWJ9EpV2VbS+nxIABlT0OBR+YKXigTEXg4A5qLMjgGEhLIUY/0t+Sp
 RDmxF2PVssOO/ZkY/uu/DKPgE5Rmi3CMhZEgZSNhaQ1u6p4+W+G+ZoxvC3+ikbgwyuCz
 aJIg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXSiPXDM4ej21U3rQfN01Gdko7xWHRTrhPA0pOlSDpWNmKjflfjLPulCKwy7h2+RK6CtBIUCJiey/dV/cYCJw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxCuO+GoBhl+D9YOZp5dON4uoKUOEc7mbDNm+DZuVFdiGkgE99s
 6nCi0/NXepJpugIckeL81ue+porzVSUM5dma7OtfF2JQa3C1p323yDdryMri9v7nHk96zPoh2So
 niJd/9H+u5itRnjhspJlH2aorDuE=
X-Gm-Gg: ASbGnctI+R5ZmHPuu3YOdhfSzZBJlyYMBV8+LMMI1hQxiY4WNMZ8piOrrJoIFKl8hv6
 5fq5M42H2zosjQfO8xjU+ooonXn+F5JM6nxyQrwkDaWL+MOjC7Rj+B3W8jvDrAasPiCIKat2ikC
 apTMX6sFU3bCcv1gp7EuKQDLKnbTEP5puj79Yx
X-Received: by 2002:a17:90b:4c4a:b0:2f4:4003:f3ea with SMTP id
 98e67ed59e1d1-3030ff21efdmt30969747a91.33.1742895866846; Tue, 25 Mar 2025
 02:44:26 -0700 (PDT)
MIME-Version: 1.0
From: jonas fernando <jonasfernando500@gmail.com>
Date: Tue, 25 Mar 2025 10:44:20 +0100
X-Gm-Features: AQ5f1JoetJbP-9k4slGJ4_74NYWGWxqKT3KxGaL-ZrJBryXJ7yGu_pMPOtCCPpY
Message-ID: <CADBYoC8gYvveOaEw9N7ox4ot+LtkVa+3NiWaHfmutdaN4h_0aw@mail.gmail.com>
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  -- Guten Morgen,Ich weiß, dass es für Sie seltsam sein wird,
    meine Nachricht zu erhalten, aber ich weiß, dass ich mich dank Ihres Profils
    dafür entschieden habe, Ihnen den Betrag von 550.000 Euro [...] 
 
 Content analysis details:   (3.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.216.47 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.216.47 listed in bl.score.senderscore.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [jonasfernando500[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [jonasfernando500[at]gmail.com]
  0.5 SUBJ_ALL_CAPS          Subject is all capitals
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  1.2 MISSING_HEADERS        Missing To: header
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.216.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.216.47 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
  2.0 MALFORMED_FREEMAIL     Bad headers on message from free email
                             service
  0.0 LOTS_OF_MONEY          Huge... sums of money
X-Headers-End: 1tx0pk-0003BC-MD
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] MEINE SPENDE
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
Cc: ulf.hansson@linaro.org, valentin@compulab.co.il,
 urs.thuermann@volkswagen.de, usb-storage@lists.one-eyed-alien.net,
 usbdev@sm04.de, ulfc@thepuffingruop.com, uwe.bugla@gmx.de, umka@clusterfs.com,
 unicode@lanana.org, ujr@physik.phy.tu-dresden.de, ursula.braun@de.ibm.com,
 ism@tardis.ed.ac.uk, valentin.longchamp@keymile.com, ursg@uni.de,
 umalhi@cisco.com, username@smtp.gmail.com,
 valentine.barshak@cogentembedded.com, utz.bacher@de.ibm.com,
 unslider@miranda.org, vagabon.xyz@gmail.com, ulfc@bun.falkenberg.se,
 ukleinek@informatik.uni-freiburg.de, valentina.manea.m@gmail.com,
 v9fs-developer@lists.sourceforge.net, v.sitdikov@gmail.com,
 ulrich.u.muller@nokia.com, utillinux@vger.kernel.org, v4l@cerqueira.org,
 uris@siano-ms.com, user-mode-linux-devel@lists.sourceforge.net,
 ulli.kroll@googlemail.com, ulrich.mueller42@web.de, urs.fleisch@sensirion.com,
 ulrpeg@bigcomm.gun.de, steve@ei.org,
 user-mode-linux-user@lists.sourceforge.net, valentin.longchamp@epfl.ch,
 v1ron@mail.ru, underley@underley.eu.org, vaka@newmail.ru, mack@cray.com,
 ukl@pengutronix.de, ulfc@engr.sgi.com, utx@penguin.cz, unichrome@shipmail.org,
 usb-storage@davidb.org, username@gmail.com, uros@kss-loka.si,
 usrp-users@lists.ettus.com, urban@svenskatest.se
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

LS0gCkd1dGVuIE1vcmdlbixJY2ggd2Vpw58sIGRhc3MgZXMgZsO8ciBTaWUgc2VsdHNhbSBzZWlu
IHdpcmQsIG1laW5lIE5hY2hyaWNodAp6dSBlcmhhbHRlbiwgYWJlciBpY2ggd2Vpw58sIGRhc3Mg
aWNoIG1pY2ggZGFuayBJaHJlcyBQcm9maWxzIGRhZsO8cgplbnRzY2hpZWRlbiBoYWJlLCBJaG5l
biBkZW4gQmV0cmFnIHZvbiA1NTAuMDAwIEV1cm8genUgemFobGVuLiBNZWluIE5hbWUKaXN0IEpv
bmFzIEZFUk5BTkRPLCBpY2ggbGViZSBzZWl0IDIwMjIgbWl0IEFteW90cm9waGVyIExhdGVyYWxz
a2xlcm9zZSB1bmQKd2Vpw58sIGRhc3MgaWNoIGluIHNww6R0ZXN0ZW5zIDMgTW9uYXRlbiBzdGVy
YmVuIHdlcmRlLiBJY2ggaGFiZSBkaWVzZW4KQmVpdHJhZyBtaXQgbWVpbmVtIGxldHp0ZW4gQXRl
bXp1ZyBnZXNjaHJpZWJlbi4gSWNoIGJpbiBlaW4gTWFubiwgZGVyIGtlaW4KbGVpY2h0ZXMgTGVi
ZW4gaGF0dGUsIHNlaXQgaWNoIDIwMjEgbWVpbmUgRnJhdSB1bmQgbWVpbmVuIGVpbnppZ2VuIFNv
aG4gYmVpCmVpbmVtIEF1dG91bmZhbGwgdmVybG9yZW4gaGFiZSwga3VyeiBiZXZvciBtaXIgZGll
IMOEcnp0ZSB2b24gZGllc2VyCktyYW5raGVpdCBlcnrDpGhsdGVuLCBkaWUgbWljaCBtaXQgU2lj
aGVyaGVpdCB0w7Z0ZW4gd2lyZC4gSWNoIG3DtmNodGUgZGlyCmRpZXNlcyBHZWxkIGdlYmVuLiBJ
Y2ggbcO2Y2h0ZSB3aXNzZW4sIG9iIFNpZSBiZXJlaXQgc2luZCwgZGllc2VzIEdlbGQKYW56dW5l
aG1lbi4gQml0dGUgYW50d29ydGUgbWlyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
