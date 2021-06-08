Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6443539FFDF
	for <lists+v9fs-developer@lfdr.de>; Tue,  8 Jun 2021 20:39:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lqgd3-0007zW-0K; Tue, 08 Jun 2021 18:39:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hgcoin@gmail.com>) id 1lqgd1-0007zO-Pz
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Jun 2021 18:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Haq0YPA4rRTEboTMq/srqauEYHmbuV8PWUShNR4iohk=; b=mKm49NhbpeYmkcGO2e4fyPQp1L
 eqp6so5gqiWuLyy+Gbn7PnFUYTP8NayxBdqeqQdSyEvSgx51GlDtzz5NAc9xtpWXRDOP3WPD1DpY7
 d1QqXjmkLLCIiv1wwIil93O8+A+hXiMXYqCRu7U7+SKw9RYHIrR8XvgpE4g12nwIhuhc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Haq0YPA4rRTEboTMq/srqauEYHmbuV8PWUShNR4iohk=; b=dP4mESU5Q1omq42GYq08A3v8Sy
 /z+TNuzlfroSVr32vAjfYl1KwdqymWKwprN/+EBPTpHFzDcKkm4iguzeaHnrnZfFzhjwZZIM8IG0f
 cKt6AdXUO6AxufSq9hd+Tq4VC5qUeHd+3vAcQ/J4Nol67BaKIAhjfVLVeqCAUsl0du18=;
Received: from mail-il1-f171.google.com ([209.85.166.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lqgd0-001DdJ-6g
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Jun 2021 18:39:10 +0000
Received: by mail-il1-f171.google.com with SMTP id v13so20514898ilh.13
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 08 Jun 2021 11:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Haq0YPA4rRTEboTMq/srqauEYHmbuV8PWUShNR4iohk=;
 b=PVKsbw60mkC8RpXyNr0BZLkqvkHsBxGq8GBSWhSy+ExzMC+eOXN7KBfCUcSELnIyxo
 bxhjS54o6cTRBHg+QJDLBFQA1rWktVKtbWGTtSoZ5DfMbblpggDcT1KqA8M1+j11D0iS
 AGrTcueRm3xLrQrA1OXFKFnay53nSIVzda4PDjGhZcSSY9cLcWllfmF4u1abhdhaFUZQ
 C9sUfuy8NA4YsZ2Dmi1XFJ7qCWiXimhiav7dTAj82/ebNM/VZc8C/sYLUjCwx1/cBx7x
 3MNwPs/BMRSreLBPMQnbqYGxaBoeFNAC8nI2dt0KLZccr6FnU7kmuxWE0iDB4Y2S5DXt
 dyxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Haq0YPA4rRTEboTMq/srqauEYHmbuV8PWUShNR4iohk=;
 b=hfHteiyR4aygamBqn+LIjohp4iCUkmW0jZDwPMHm7X4KZhjDadLBGv2A3SNXIw6QLe
 5JG1iU9+CJG96XjkB7xwgDEn75NOqp1YTFSy/5HaEHrqwXWSJn/eKkRH6omLojQjgjAw
 zuEy7Rw5RMSP+21MEzUOMQ9llBwPEFPBZowQMMfnK7zRxgL8c/5RTu5CqylQdFz2o4Uy
 ZvOwdgvKojk6krOpVXsvjEwuz9dSOGNzk8dqBcsUynFbqoQro+BJP5VRIb7A1D2CqLFt
 74Q6mRRb5++6aIb7hwr6BYEVgmCaL0ElB6uP5IFModhiYZxs66xgnDATmCchK9ejaPsd
 kfvQ==
X-Gm-Message-State: AOAM531TrIkTxdirR0tnWtkmUIFd8g4d+p+lSoDVqfBXA6ba80eRjzUV
 f6KBMjbh+kYP1R622zJK+wEFjhPPLh2tnQ==
X-Google-Smtp-Source: ABdhPJy5OrUw7426A3b8pznWY7QtD+fdgLZ+j/BDm/DOlGqGSeEsxK/Hs5B55TnNbmUwVM6aTlBMPg==
X-Received: by 2002:a92:c748:: with SMTP id y8mr244887ilp.41.1623177538914;
 Tue, 08 Jun 2021 11:38:58 -0700 (PDT)
Received: from ceo1homenx.1.quietfountain.com (173-29-47-53.client.mchsi.com.
 [173.29.47.53])
 by smtp.gmail.com with ESMTPSA id e14sm241164ile.2.2021.06.08.11.38.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jun 2021 11:38:58 -0700 (PDT)
To: Vivek Goyal <vgoyal@redhat.com>, linux-fsdevel@vger.kernel.org,
 virtio-fs@redhat.com,
 linux kernel mailing list <linux-kernel@vger.kernel.org>
References: <20210608153524.GB504497@redhat.com>
From: "Harry G. Coin" <hgcoin@gmail.com>
Message-ID: <8929c252-3d99-8cdb-1c56-5fdb1fd29fc2@gmail.com>
Date: Tue, 8 Jun 2021 13:38:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210608153524.GB504497@redhat.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (hgcoin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lqgd0-001DdJ-6g
Subject: Re: [V9fs-developer] [Virtio-fs] [PATCH] init/do_mounts.c: Add
 root="fstag:<tag>" syntax for root device
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
Cc: Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 David Howells <dhowells@redhat.com>, viro@zeniv.linux.org.uk,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gNi84LzIxIDEwOjM1IEFNLCBWaXZlayBHb3lhbCB3cm90ZToKPiBXZSB3YW50IHRvIGJlIGFi
bGUgdG8gbW91bnQgdmlydGlvZnMgYXMgcm9vdGZzIGFuZCBwYXNzIGFwcHJvcHJpYXRlCj4ga2Vy
bmVsIGNvbW1hbmQgbGluZS4gUmlnaHQgbm93IHRoZXJlIGRvZXMgbm90IHNlZW0gdG8gYmUgYSBn
b29kIHdheQo+IHRvIGRvIHRoYXQuIElmIEkgc3BlY2lmeSAicm9vdD1teWZzIHJvb3Rmc3R5cGU9
dmlydGlvZnMiLCBzeXN0ZW0KPiBwYW5pY3MuCj4KPiB2aXJ0aW8tZnM6IHRhZyA8L2Rldi9yb290
PiBub3QgZm91bmQKPiAuLgo+IC4uCj4gWyBlbmQgS2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6
IFZGUzogVW5hYmxlIHRvIG1vdW50IHJvb3QgZnMgb24gdW5rbm93bi1ibG9jaygwLDApIF0KCldo
YXRldmVyIHRoZSBiZXN0IGRpcmVjdGlvbiBmb3J3YXJkIG1pZ2h0IGJlIGZvciBrZXJuZWwgcGF0
Y2hlcwpyZWdhcmRpbmcgJ25vdCBibG9jayBkZXZpY2UgYXMgcm9vdCcsIGl0IHdvdWxkIGVhc2Ug
bGVhcm5pbmcgY3VydmVzIGlmCid0aGUgcGF0dGVybnMgdGhhdCBzZXQgY29uZmlnIGlzc3VlIFgn
IHdlcmUgdGhlIHNhbWUgYWNyb3NzIHJvb3QgJ25vdApibG9jayBkZXZpY2Ugb3B0aW9ucycgd2hl
dGhlciBjZXBoZnMsIG5mcywgOXAsIHZpcnRpb2ZzLsKgIEFsbCBvZiB0aGVtCndpbGwgaGF2ZSB0
byBoYW5kbGUgdGhlIHNlbGludXggeGF0dHIvaXNzdWUsIHBvc2l4IGFuZCBmbG9jayBpc3N1ZXMs
CmNhY2hpbmcgZXRjLsKgIFdoaWxlIGJ5IGRlZmluaXRpb24gdmlydGlvZnMgaGFzIHRvIGV4aXN0
IG9ubHkgaW4gYSB2bQpndWVzdCwgdGhlIG90aGVycyBjb3VsZCBiZSBiYXJlbWV0YWwgb3Igdm0g
Z3Vlc3Qgcm9vdHMuwqAgKEhvdyBtdWNoIDlwJ3MKb3RoZXItdGhhbi1ndWVzdCB0cmFuc3BvcnRz
IGFyZSB1c2VkIEkgZG9uJ3Qga25vdykuCgpGWUkgKHRob3VnaCBwYXRjaGluZyB0aGUga2VybmVs
IG1heSBiZSB0aGUgYmVzdCBvcHRpb24pwqAgdGhlcmUgaXMgYSBjYXNlCnRoYXQgZG9lcyBub3Qg
aGF2ZSB0aG9zZSBrZXJuZWwgcGFuaWNzIGZvciB2aXJ0aW9mcy1yb290IGFuZCA5cCByb290CnVz
aW5nIHN0b2NrIGZjMzQuwqAgQXMgOXAsIHRoZSB2aXJ0aW9mcyBtZXRob2QgdXNlcyB0aGUgaW5p
dHJkIGNyZWF0aW9uCm1lY2hhbmlzbXMgcHJvdmlkZWQgYnkgJ2RyYWN1dCcgb3IgJ2luaXRyYW1m
cycgdG8gcHJvdmlkZSB0aGUgJ3N5c3Jvb3QKcGl2b3QgZ2x1ZScuCgpPbiB0aGUgZmMzNCBndWVz
dCBhIHN1Y2Nlc3NmdWwgJ2RpcmVjdCBrZXJuZWwgYm9vdCcgdG9kYXkgbG9va3MgbGlrZToKCmtl
cm5lbCBwYXRoOiAvdm1zeXN0ZW1zL2ZlZG9yYV9nZW5lcmljL2Jvb3Qvdm1saW51egoKaW5pdHJk
IHBhdGg6IC92bXN5c3RlbXMvZmVkb3JhX2dlbmVyaWMvYm9vdC9pbml0cmQuaW1nCgpLZXJuZWwg
YXJnczogcm9vdD12aXJ0aW9mczpteWZzIHJkLnNoZWxsIHJkLmZzdGFiCgoKVGhlIHhtbCB0byBw
YXNzIHRocm91Z2ggdmlydGlvLWZzIGlzOgoKPGZpbGVzeXN0ZW0gdHlwZT0ibW91bnQiIGFjY2Vz
c21vZGU9InBhc3N0aHJvdWdoIj4KwqAgPGRyaXZlciB0eXBlPSJ2aXJ0aW9mcyIgcXVldWU9IjEw
MjQiLz4KwqAgPGJpbmFyeSB4YXR0cj0ib24iPgrCoMKgwqAgPGxvY2sgcG9zaXg9Im9uIiBmbG9j
az0ib24iLz4KwqAgPC9iaW5hcnk+CsKgIDxzb3VyY2UgZGlyPSIvdm1zeXN0ZW1zL2ZlZG9yYV9n
ZW5lcmljIi8+CsKgIDx0YXJnZXQgZGlyPSJteWZzIi8+CjwvZmlsZXN5c3RlbT4KClRoZSBndWVz
dCBmc3RhYiBpczoKCm15ZnMgLyB2aXJ0aW9mcyBkZWZhdWx0cyAwIDAKCkhUSAoKSGFycnkgQ29p
bgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5
ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1k
ZXZlbG9wZXIK
