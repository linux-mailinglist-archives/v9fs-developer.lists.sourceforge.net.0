Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C512AA414
	for <lists+v9fs-developer@lfdr.de>; Sat,  7 Nov 2020 10:01:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kbK6V-0006ws-TF; Sat, 07 Nov 2020 09:01:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <3aWKmXw4JAMoty5.qw7u39MKIIw2qy1.s42@trix.bounces.google.com>)
 id 1kbK6T-0006wd-UP
 for v9fs-developer@lists.sourceforge.net; Sat, 07 Nov 2020 09:01:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Date:Message-ID:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xnpN2AG4aUT7eCsmiHlVsdoe5w8jt/Me3IlPHUmBVXw=; b=T7vh3LNF0t8p6K/TKWvkBj3Otz
 2uV53uD5vhUSdnwqXT3JyoHV6eOCeZqjTQLuKzXcyGMNS1GbkCTH3DBYB1xQbtGBKJx7sV2jUcEc2
 LeRMt72KN9l50ppe+iPJ5UBv6O1HW6zVq5OoybBhUI/SYclYDf+wKvqep3NojbgKmcyk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Date:Message-ID:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xnpN2AG4aUT7eCsmiHlVsdoe5w8jt/Me3IlPHUmBVXw=; b=S
 Ee5Lex1EhB6MLDKVWRnWcOXDvgVqlRc0JiBv8rkkyXrdu8xUc/baO8mUif4K+rNl2oK/CEpZ0WmCf
 TdnnjZNaqSreS5GR8DXwPyXu586mM5X041zn2/8N6+1F6EFQdVWw6AElmuKtgD3bRCvule3X+eIqO
 KuyyWueGRpbHHy4M=;
Received: from mail-qv1-f71.google.com ([209.85.219.71])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kbK6R-0042De-9e
 for v9fs-developer@lists.sourceforge.net; Sat, 07 Nov 2020 09:01:45 +0000
Received: by mail-qv1-f71.google.com with SMTP id a1so2197354qvv.18
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 07 Nov 2020 01:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:message-id:date:subject:from:to;
 bh=xnpN2AG4aUT7eCsmiHlVsdoe5w8jt/Me3IlPHUmBVXw=;
 b=Wkrn6/Q4a4NBG2s5XTa+H63tw09k+AlMEyb7CNeJqbXQojxOpeIuxCV8FxLhrLfN9W
 mmvIThBvwCalxWOvOECrXp7uZgBAR/NK+uS7EisYSf8GvgxcPRZ5qf1BecTrozQ9JFO3
 RoIUVEB/jBF5qwrXTlEnZSk0eNZ7q+bxRXEHz+piSaXQP13F1CNv/8DV9bYvyC28MAOQ
 TWuMzvStWcvifI76VhJiZB72i4dAu9+L0DqRbjCbYNjdfmoMH0IN9n6+VYROWLX78oN6
 ma+g1TKgm+7DRT1cuT4pdL4mWtkpoxFGDlPhUYzQPZlKWgRvgc9CT7VGwFqnlKWOfYyb
 ICKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:message-id:date:subject
 :from:to;
 bh=xnpN2AG4aUT7eCsmiHlVsdoe5w8jt/Me3IlPHUmBVXw=;
 b=dwjUWsgcaPCGHlL89yBnW9NMiMXNza5MjxS0LHecMZS5Ne1Zxg5/ily4UHAEupJu8S
 Zh5quOOy3TYhQ5Y6XxSZrUjJYX/yFQrhvUnh8gsKzetK5Ft0VVn0ibq84v5UmTg7hsE7
 vBrnOdnfOMS/MApo5qG06o2PzwY1silRfPF59UfsxpugoG83xDEnAmbQsFIzBCEY6LXR
 ueG57+jXfkFMuRi5sW+hCQljR0tA20ceGuWsZ2N6HMradSzIc8phEodZgnR5nhNL/0Ot
 JZvRBPCugpGyjl/31JDztc6rhLS9uYhqI0btbfsYlNi2BeazkImVHn5z7V3xpO+PoR4o
 Wg1g==
X-Gm-Message-State: AOAM531Lz/sq1wmEl4Ev80enTmhSkd2zY53dq+Yo3Dkf19QGDV0DNdcj
 WTLcdN19sTz1use3KbfmGTd70rWfArkRDB+gTUzP
MIME-Version: 1.0
X-Received: by 2002:a05:620a:2054:: with SMTP id
 d20mt5421787qka.175.1604739689369; 
 Sat, 07 Nov 2020 01:01:29 -0800 (PST)
X-No-Auto-Attachment: 1
Message-ID: <000000000000246dee05b380932d@google.com>
Date: Sat, 07 Nov 2020 09:01:30 +0000
From: dip.agrent6422@gmail.com
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 2.6 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dip.agrent6422[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (dip.agrent6422[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.71 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
X-Headers-End: 1kbK6R-0042De-9e
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] U.S. Customs and Border Protection.
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
Reply-To: dip.agrent6422@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SSd2ZSBpbnZpdGVkIHlvdSB0byBmaWxsIG91dCB0aGUgZm9sbG93aW5nIGZvcm06DQpVbnRpdGxl
ZCBmb3JtDQoNClRvIGZpbGwgaXQgb3V0LCB2aXNpdDoNCmh0dHBzOi8vZG9jcy5nb29nbGUuY29t
L2Zvcm1zL2QvZS8xRkFJcFFMU2ZmejltQUl0dlRHWVN5M19XZ21HVnFzb3cwdmJwTjVRRnVqQTk5
TGphbzJYTEk3Zy92aWV3Zm9ybT92Yz0wJmFtcDtjPTAmYW1wO3c9MSZhbXA7ZmxyPTAmYW1wO3Vz
cD1tYWlsX2Zvcm1fbGluaw0KDQpHb29kIG1vcm5pbmcgdG8geW91Lg0KDQpUaGlzIG1lc3NhZ2Ug
aXMgY29taW5nIHRvIHlvdSBmcm9tIFUuUy4gQ3VzdG9tcyBhbmQgQm9yZGVyIFByb3RlY3Rpb24g
LSAgDQpDaGllZiBNb3VudGFpbiBQb3J0IG9mIEVudHJ5LCBUaGUgbWVzc2FnZSBpcyBiZWNhdXNl
IG9mIHlvdXIgcGFja2FnZSBib3ggIA0Kd2hpY2ggd2FzIGp1c3QgcmVsZWFzZWQgYW5kIGNsZWFy
ZWQgYWJvdXQgMzAgbWludXRlcyBhZ2/igKYgd2Ugd2FudCB5b3UgdG8gIA0KY29tZSBkb3duIGhl
cmUgaW4gcGVyc29uIGFuZCB0YWtlIGF3YXkgeW91ciBwYWNrYWdlIHdpdGhvdXQgYW55IHF1ZXN0
aW9uIG9yICANCmRlbGF5IGZyZWVseSAoQWRkcmVzczogMTM5NSBDaGllZiBNb3VudGFpbiBId3ks
IEJhYmIsIE1UIDU5NDExLCBVbml0ZWQgIA0KU3RhdGVzKQ0KYnV0IGlmIGl0IGNhbuKAmXQgYmUg
cG9zc2libGUgZm9yIHlvdSB0byBjb21lIGRvd24gZHVlIHRvIHdvcmtpbmcgaG91ciBqdXN0ICAN
CmdvIGRvd24gdG8gYW55IG5lYXJlc3Qgc3RvcmUgYnV5IHN0ZWFtIGNhcmQgb3Igbm9yZHN0cm9t
IGNhcmQgb2YgJDE5MCBhbmQgIA0Kc2VuZCBpdCB0byB5b3VyIGRlbGl2ZXJ5IGFnZW50IHZpYSBl
IGVtYWlsIChob25vcmFibGVoYXJyaXNvbjJAZ21haWwuY29tKSAgDQpvciBwaG9uZSArMSAoMjE2
KSA0NjUtNTMxNyBpIGV4cGVjdCB5b3VyIHVyZ2VudCBjYWxsIHBsZWFzZSBhbHNvIHByb3ZpZGUg
IA0KeW91ciBhZGRyZXNzIHdoZXJlIHlvdSB3YW50IHlvdXIgcGFja2FnZSBib3ggdG8gYmUgZGVs
aXZlcmVkIHRvICB5b3UgaW4gIA0KbmV4dCA0IGhvdXJzIHlvdSB3aWxsIGNvbmZpcm0geW91ciBw
YWNrYWdlIGltbWVkaWF0ZWx5LCBwbGVhc2UgZG9u4oCZdCBpZ25vcmUgIA0KdGhpcyBtZXNzYWdl
IGJlY2F1c2UgeW91IGFyZSB2ZXJ5IGx1Y2t5IHBlcnNvbiB0b2RheeKApi4uDQoNClUuUy4gQ3Vz
dG9tcyBhbmQgQm9yZGVyIFByb3RlY3Rpb24uDQoNCkdvb2dsZSBGb3JtczogQ3JlYXRlIGFuZCBh
bmFseXplIHN1cnZleXMuDQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby92OWZzLWRldmVsb3Blcgo=
