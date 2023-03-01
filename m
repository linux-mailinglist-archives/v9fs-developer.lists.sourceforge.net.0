Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C99E56A7200
	for <lists+v9fs-developer@lfdr.de>; Wed,  1 Mar 2023 18:24:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pXQBU-0005FB-Uv;
	Wed, 01 Mar 2023 17:24:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1pXQBS-0005F5-1W
 for v9fs-developer@lists.sourceforge.net;
 Wed, 01 Mar 2023 17:24:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PIHxNwLqqYjZNA0Dkndbth2++h3bYPGFCZQ+tmKXTvo=; b=kSLABVhBR7APDsA42Lb1we5dCA
 zUSupGWJKXVxYjcLXq4JkoVEQuNPBOiNfEv/3MqZ62tPwrCaRLx6AO8CQlklexKUq245EvLkcf+n9
 TkZnz9xjxxtDLB+/5bqBzAl9kf0JuzEHFZh7UPYz8u6wyr6TBlqJ3wlti6a4GU+zJDf4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PIHxNwLqqYjZNA0Dkndbth2++h3bYPGFCZQ+tmKXTvo=; b=ccLA1/Eiw5BoknBXeV0Zh7kABL
 uflFlUDfZyi7VKAchYoRWSVLUQKYcq5fNvdWpmzOzyXCSfgtEj7Nh55GGZdE5ZhBEX/sDXU9LXGkz
 oXBjMw2ub9u5alhJbPeBLhlb0vuo5XSv6aaFlvIp6Yvl/lbNz9q9BVCrELN6JDX/GZ+I=;
Received: from mail-ed1-f41.google.com ([209.85.208.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pXQBQ-00B4uU-Ml for v9fs-developer@lists.sourceforge.net;
 Wed, 01 Mar 2023 17:24:06 +0000
Received: by mail-ed1-f41.google.com with SMTP id f13so56886114edz.6
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 01 Mar 2023 09:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1677691437;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PIHxNwLqqYjZNA0Dkndbth2++h3bYPGFCZQ+tmKXTvo=;
 b=gkJCQvGgWo5WHUszYFShKXpaJZKILCY40x7A0iLn4rlkzu35V4uq1A0IJPwVVD//42
 2utEq+7mfhqIXgP3IFvKRYcvLVP97IITDoh1vaVGxamYUu+LXKJi8iXhMymtp+ru8krK
 TZWeYBSQ/IQyjcVN1uCJ8pn1u6M7wyFwtdYB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677691437;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PIHxNwLqqYjZNA0Dkndbth2++h3bYPGFCZQ+tmKXTvo=;
 b=MMeQPKUl7Jl602S446EBmGfdFpIx6oMKCaPKYtMKcSxM2hFTGFZVOS2eidnK3AhAOY
 56EbBg0BYWcfl1kDOq/U4fe8wAaxP0lz4Olge+8/rc+YCUjN2iuhJS1cn/5e1UyRGS6D
 +eEZqjW4uj+J1ZTKRNk8xqQk3XL6X2XLoShsTvai8+h9w4VD//nK5+aedu2BYb67tTMr
 h4pozrP3Ltg4Wz06itZndaoYtm8wLX4M0UbVZnjpJiEzyRdJtgRh+hNOgQDuyd8kEOIt
 ajmDBCiNCvHncJ9v7z2TCLmsz1JayDcJ4fFmgNa7tAI1oBTKtSBOr2AAVXiTfqRRnjV3
 me1Q==
X-Gm-Message-State: AO0yUKV6gFHxq+QwbkAb7cO8foMkJGqC4a8/GyETh8tUY6DPpeNHPbk6
 +a3U6vxe7l5yMmWJaQALSlUlzg9g4MYG0+9VgNDhqw==
X-Google-Smtp-Source: AK7set8ufP9l9k/4AeKdDzgFBkJf6Zwr/k+NSex8sjS+bY6bC7rgLH5LGJ7woLqrqBlocwO4+/8iCQ==
X-Received: by 2002:a05:6402:110a:b0:4ac:d2b4:ec2c with SMTP id
 u10-20020a056402110a00b004acd2b4ec2cmr7280309edv.29.1677689962883; 
 Wed, 01 Mar 2023 08:59:22 -0800 (PST)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com.
 [209.85.208.52]) by smtp.gmail.com with ESMTPSA id
 w19-20020a50d793000000b004af70c546dasm5807755edi.87.2023.03.01.08.59.21
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Mar 2023 08:59:22 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id cw28so7418742edb.5
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 01 Mar 2023 08:59:21 -0800 (PST)
X-Received: by 2002:a50:c34a:0:b0:4ae:f144:2c8e with SMTP id
 q10-20020a50c34a000000b004aef1442c8emr4332069edb.5.1677689961649; Wed, 01 Mar
 2023 08:59:21 -0800 (PST)
MIME-Version: 1.0
References: <Y/+A/K4/2A8iRj2m@thundercleese.milagro.dyndns.org>
In-Reply-To: <Y/+A/K4/2A8iRj2m@thundercleese.milagro.dyndns.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 1 Mar 2023 08:59:04 -0800
X-Gmail-Original-Message-ID: <CAHk-=whdBXHWSj2X873om=iZ21CbeWw5P1qiX2GOKGzskdmZtg@mail.gmail.com>
Message-ID: <CAHk-=whdBXHWSj2X873om=iZ21CbeWw5P1qiX2GOKGzskdmZtg@mail.gmail.com>
To: Eric Van Hensbergen <ericvh@kernel.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Mar 1, 2023 at 8:44 AM Eric Van Hensbergen <ericvh@kernel.org>
    wrote: > > Its been about a decade since I've submitted a pull > request,
    sorry if I messed anything up. Well, I'd really have liked to see the commit
    not having been updated last week, but other than that I only react to the
    fact that your kernel.org email address in your pgp key seems to have your
    own [...] 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.41 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: linux-foundation.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1pXQBQ-00B4uU-Ml
Subject: Re: [V9fs-developer] [GIT PULL] 9p patches for 6.3 merge window
 (part 1)
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gV2VkLCBNYXIgMSwgMjAyMyBhdCA4OjQ04oCvQU0gRXJpYyBWYW4gSGVuc2JlcmdlbiA8ZXJp
Y3ZoQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gSXRzIGJlZW4gYWJvdXQgYSBkZWNhZGUgc2luY2Ug
SSd2ZSBzdWJtaXR0ZWQgYSBwdWxsCj4gcmVxdWVzdCwgc29ycnkgaWYgSSBtZXNzZWQgYW55dGhp
bmcgdXAuCgpXZWxsLCBJJ2QgcmVhbGx5IGhhdmUgbGlrZWQgdG8gc2VlIHRoZSBjb21taXQgbm90
IGhhdmluZyBiZWVuIHVwZGF0ZWQKbGFzdCB3ZWVrLCBidXQgb3RoZXIgdGhhbiB0aGF0IEkgb25s
eSByZWFjdCB0byB0aGUgZmFjdCB0aGF0IHlvdXIKa2VybmVsLm9yZyBlbWFpbCBhZGRyZXNzIGlu
IHlvdXIgcGdwIGtleSBzZWVtcyB0byBoYXZlIHlvdXIgb3duIG5hbWUKbWlzc3BlbGxlZC4gVGhh
dCBsb29rcyBhIGJpdCBvZGQuCgogICAgICAgICAgICBMaW51cwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
