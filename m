Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0767A58CDC4
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Aug 2022 20:40:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oL7fV-0001Ri-Im; Mon, 08 Aug 2022 18:40:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ray.taylor5533@gmail.com>) id 1oL7fU-0001RY-Ef
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Aug 2022 18:39:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=32UKIuoGgrNz6hlrfgN/cDpYQt0rT0LyEwh0a9WpF+Q=; b=bpPUgQ6Y9lWkY6SOJh82pBkOhJ
 +OlsQ/2L/g26sBWWVtM+4mjm0/lmYdUHFMUvM3JME7APRrzRqnrQTz5Mj2ioYBGoFThui+oarfKq8
 r1A2hYCMfNX50+rK8rCgYU3hWFD1lC+0VLU/r36WJeMjNJjVXAwoj284DZaqVo1Me9Hw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=32UKIuoGgrNz6hlrfgN/cDpYQt0rT0LyEwh0a9WpF+Q=; b=H
 VjJUtVBECE3blSW9IbjJa42GGavPQLbSLnnOu06CkqjfmZwMweaWtzDZ5c9CI+guAQz0z2gOWxaHT
 +NAnZBuccR8CYuFCTrfK7t9sdX1zhgfnHyeIjlqgeuU0Mq8WLRlD7xr/LplugWjpexowUKpz2tTAJ
 9lAHSJdixlz3vHIE=;
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oL7fS-0004aR-Jq
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Aug 2022 18:39:59 +0000
Received: by mail-wr1-f66.google.com with SMTP id z16so11789163wrh.12
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 08 Aug 2022 11:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:mime-version:subject:to:from:date:from:to:cc;
 bh=32UKIuoGgrNz6hlrfgN/cDpYQt0rT0LyEwh0a9WpF+Q=;
 b=Y4mIUBn+HQ4BT5ItfpmvUMoM0Hz9n3bUhqaZhDrEhNfVP9wM4+8HkU2om3anKgx7L9
 JFuGE9HhHYaFnzov03YgcO+tzFsTE5IfYqx0zH7Btk8bYTkzHyLDL/oPg7OmjLk7sDqk
 qSOXfvWF7RZ3xdCadhLotPskMUqk3InhkQf+iGzv/oQX0YjjaFDUaqLVeEUpPoOutRy/
 9sV6zJwBT87RnoiAdXdoHff9jZxp8Ee/bC9rplfboFRxOxKbmHU7H9yDOqevHVsF1LeU
 u9UEzmRgTSO8X8OWVS1DAJ1qr9P9jnxRH9LmNxLn169XG1iMqSGmqWT1/NHkOgbEsi5X
 1fIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=message-id:mime-version:subject:to:from:date:x-gm-message-state
 :from:to:cc;
 bh=32UKIuoGgrNz6hlrfgN/cDpYQt0rT0LyEwh0a9WpF+Q=;
 b=4sqE13WzjK3+4UGPePHx3Rl0GpfHlyTCBcA9S4D0N7zXEIezOtEIZyYsYMy+gBcAbc
 FboMVJnXCOzdCiGPGR77EL8ExbB4aYuFYkxyVPJvJQa1k65BxCxZ5KlmeYaZdsa1Y6Lf
 mTZCEOKPE7aruj4qU9NNcmJy3CRG5PBG8K00HTZoDfI3EJAFqQs2JKokAcgprcACOyIg
 yGQOSV1XNXwxJqqFzqNH9vflngRqeQKDEuL6am+fECGi63PCvn4uc0keJjYk6RD5Bi43
 ukRw2hYAXG2cnqBcYM0lUzs26yBazDJZtF9o172YOii035tQ+EUAigOAZf7EWWzvqL4m
 GJpw==
X-Gm-Message-State: ACgBeo1iCkYiCpS0ApNZC0C3FkvRJ364mGlgAjL5yb+aGcCuUcphGD+V
 zatGB8OK4jy0OjvV8zAGzQFmtCAlMtlKP9nq
X-Google-Smtp-Source: AA6agR7rq/OuTNM72XMlrmbmLCXpajevAfoComkcsY9Rzr2U3vLGZqDZZegJgEQ6GO7fvbbgOV+r5g==
X-Received: by 2002:a05:6000:1188:b0:220:6c20:fbf6 with SMTP id
 g8-20020a056000118800b002206c20fbf6mr12481872wrx.372.1659983992046; 
 Mon, 08 Aug 2022 11:39:52 -0700 (PDT)
Received: from user-PC ([103.209.253.16]) by smtp.gmail.com with ESMTPSA id
 b2-20020a5d4d82000000b0021f73c66198sm11779008wru.1.2022.08.08.11.39.49
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Aug 2022 11:39:51 -0700 (PDT)
Date: Mon, 8 Aug 2022 22:32:15 +0400
From: =?UTF-8?B?2LPYp9mF2Yog2KfZhNi52KfZhdix2Yo=?= <ray.taylor5533@gmail.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Priority: 3
X-GUID: E0B99D93-7F46-4205-AB49-182C9D3409FB
X-Has-Attach: no
X-Mailer: Foxmail 7.2.23.121[en]
Mime-Version: 1.0
Message-ID: <2022080822205326474844@gmail.com>
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Good day my Friend, I hope you received my previous letter?
    I believe you’re smart and a business mysterious person. It would be an
    honor if we can be friends. I am Al-Amri, from Dubai. Please can w [...] 
 
 Content analysis details:   (2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [ray.taylor5533[at]gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ray.taylor5533[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.66 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oL7fS-0004aR-Jq
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Reminder of my previous letter.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

R29vZCBkYXkgbXkgRnJpZW5kLCBJIGhvcGUgeW91IHJlY2VpdmVkIG15IHByZXZpb3VzIGxldHRl
cj8gSSBiZWxpZXZlIHlvdeKAmXJlIHNtYXJ0IGFuZCBhIGJ1c2luZXNzIG15c3RlcmlvdXMgcGVy
c29uLiBJdCB3b3VsZCBiZSBhbiBob25vciBpZiB3ZSBjYW4gYmUgZnJpZW5kcy4gSSBhbSBBbC1B
bXJpLCBmcm9tIER1YmFpLiBQbGVhc2UgY2FuIHdlIGhhdmUgYSBidXNpbmVzcyBkaXNjdXNzaW9u
IHRoYXQgY2FuIGJlbmVmaXQgYm90aCBvZiB1cz8gSSB3aWxsIGV4cGxhaW4gdGhlIGRldGFpbHMg
dG8geW91ciB1bmRlcnN0YW5kaW5nLg0KDQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
