Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6F62DADA3
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Dec 2020 14:03:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kp9zB-0005HG-UD; Tue, 15 Dec 2020 13:03:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <3B7TYXwkJANYJ2Q325GDG8E2AD.4GE@trix.bounces.google.com>)
 id 1kp9zA-0005H3-EY
 for v9fs-developer@lists.sourceforge.net; Tue, 15 Dec 2020 13:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Date:Message-ID:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z33RgH6ow7SZOY0cOdyEQeRhvN5JlWuqdNGLeKbfl8U=; b=GJs8si33ApHdzD5pc0W19GvWwT
 mCtx6NN6VVSSXS60S1X9F44N6x008YBcxbNEXVHWYFo8ClMHlJL/mP4yA2VwBLv5ydz4tdN0c5967
 dNMBDtRxD08bDsXiXc80+FC6UyCXlalq35KEp5GfLA9phYLmCFfKoOh2dUb+K2XcKSDk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Date:Message-ID:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Z33RgH6ow7SZOY0cOdyEQeRhvN5JlWuqdNGLeKbfl8U=; b=c
 CwWJ+ZLNR3Sf1aIJThuO6J18U+4cmz4SSBr7tSCZpg2d2G4uws6sVic45zaGjzxQlCxLb5F2aBmzZ
 zZNzGPoZBZEmuFiZcNgsHUrw9jxeYkMV9DPE4zAw0W6E7RKdN9hdSyHl8gYH0yPj21JSZfKF0opFa
 0zQ3qKT0/UOMBe2M=;
Received: from mail-qv1-f69.google.com ([209.85.219.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kp9z3-00E8VY-86
 for v9fs-developer@lists.sourceforge.net; Tue, 15 Dec 2020 13:03:24 +0000
Received: by mail-qv1-f69.google.com with SMTP id j5so14151936qvu.22
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 15 Dec 2020 05:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:message-id:date:subject:from:to;
 bh=Z33RgH6ow7SZOY0cOdyEQeRhvN5JlWuqdNGLeKbfl8U=;
 b=lkhz6SXDmhzPYcS+uE7cw24Vf8cWAnaJ3vxnrUf0tOoi4QW8SCRT4AelwkLxEWbY1c
 VQdbIV2mNX3xTnBKztJERnDI7cQE3Mnr5tsUUKKILsWndkcly3Nynx44GRxTeHAeRkHY
 sRk1qQZcmYXmNjVz1qEs91C7MN6DUAQbnyeJOe2TqpGqxw3fMFUV7PlT1JJAGZ3BuJgz
 8aPYwSTDDPU/TargdHlyUKtEsn09mnZovX2vgjnVbB0x9e0vC0XjTqrgSLgSXumm8J7Q
 BKN0TEXjn1ii9a+iVF4upTzbw1PraYfBu4rbLYzS7O4wX3pQ6pMY9ps7F92rR7DrYMet
 /4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:message-id:date:subject
 :from:to;
 bh=Z33RgH6ow7SZOY0cOdyEQeRhvN5JlWuqdNGLeKbfl8U=;
 b=Kgl39JfR87cKDB+0ZYGVFJuPAxDV0au/JAISaoy4n0yFW8xU1oJbu9vkU2so08EX/9
 cSojuug6C3bGW/FhFLQfd/eLPUwREkrNseEsHAvnQagx7QrafbpkXxa/K+jQ+WdS+TfR
 Cvx8CNogU+1s4ZqIPNpdQVsKO8/nVpN0zFzeDXXmgBkvlnTWJ1clp4LJgnmBmYcjDF1S
 NNMcjWQXUZI69fjBDV/2AIZn5iK74fKlEqjguMFh5cbbGa833PZ5V9RNlA4+eAiPZiew
 TEjeitE5+qaoXY775l/K7n1lEQ6OxpdsiOAHxM+t5f2luPa0HzLoZIJgnuDLokTLPgN/
 oysA==
X-Gm-Message-State: AOAM533kIaCPvHDuH2O/cvsqmhE3shtMe+BE1ebFHZPcBA51prd4/BPT
 AvIHH2Byx3rh0Vf7kp/J4oEW6Lxf/gdaEP8KAcv8
MIME-Version: 1.0
X-Received: by 2002:a0c:9e5a:: with SMTP id z26mt39161018qve.2.1608037383361; 
 Tue, 15 Dec 2020 05:03:03 -0800 (PST)
X-No-Auto-Attachment: 1
Message-ID: <000000000000058bcd05b68061bf@google.com>
Date: Tue, 15 Dec 2020 13:03:04 +0000
From: raybadolo@gmail.com
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.69 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (raybadolo[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.69 listed in wl.mailspike.net]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
X-Headers-End: 1kp9z3-00E8VY-86
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] HOW ARE YOU?
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
Reply-To: raybadolo@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SSd2ZSBpbnZpdGVkIHlvdSB0byBmaWxsIG91dCB0aGUgZm9sbG93aW5nIGZvcm06DQpVbnRpdGxl
ZCBmb3JtDQoNClRvIGZpbGwgaXQgb3V0LCB2aXNpdDoNCmh0dHBzOi8vZG9jcy5nb29nbGUuY29t
L2Zvcm1zL2QvZS8xRkFJcFFMU2NWTWFXWWdGQk5GVFhodzdGbUZwT29DVV9aVGJPWkFVWURDQVNN
NGhndVpFd1R4QS92aWV3Zm9ybT92Yz0wJmFtcDtjPTAmYW1wO3c9MSZhbXA7ZmxyPTAmYW1wO3Vz
cD1tYWlsX2Zvcm1fbGluaw0KDQpIZWxsbyBNeSBEZWFyLA0KDQpJIGhvcGUgdGhpcyBsZXR0ZXIg
ZmluZHMgeW91IHdlbGwuDQoNCk15IG5hbWUgaXMgRWtvdcOpIERqcm8gR0xPS1BPUi4gQW55d2F5
LCBJIGFtIGluIHBvc2l0aW9uIG9mIGVsaWdpYmxlIEZVTkQgdG8gIA0KdHJhbnNmZXIgZm9yIElu
dmVzdG1lbnQgUHVycG9zZSBhcyBhIHNvdXJjZSBvZiBGdW5kaW5nIFByb2plY3RzLiBBbmQgdXBv
biAgDQp5b3VyIGFja25vd2xlZGdtZW50IG9mIHJlY2VpdmluZyB0aGlzIE1lc3NhZ2UgSSB3aWxs
IHByb3ZpZGUgeW91IGZ1cnRoZXIgIA0KaW5mb3JtYXRpb24gaW4gRnVsbCBEZXRhaWxzLg0KDQpQ
bGVhc2UgcmVwbHkgdG86IGVkZ2xva3BvckBhb2wuY29tDQoNCkkgYXdhaXQgeW91ciBDb25maXJt
YXRpb24gUmVzcG9uc2UuDQoNCkJlc3QgUmVnYXJkcywNCk1yLiBFa291w6kgRGpybyBHTE9LUE9S
Lg0KDQoNCg0KDQoNCkdvb2dsZSBGb3JtczogQ3JlYXRlIGFuZCBhbmFseXplIHN1cnZleXMuDQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZl
bG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Bl
cgo=
