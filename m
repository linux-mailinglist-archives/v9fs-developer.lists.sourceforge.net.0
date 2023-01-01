Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A057F65AC1C
	for <lists+v9fs-developer@lfdr.de>; Sun,  1 Jan 2023 23:54:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pC7DJ-0005i8-93;
	Sun, 01 Jan 2023 22:53:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pC7DG-0005i2-Gn
 for v9fs-developer@lists.sourceforge.net;
 Sun, 01 Jan 2023 22:53:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6K6pP6ckR0iWKWkrtsOjaDE+10AoxzaCFV4VbGtAvVg=; b=aapoP+ztj5+FYulIxGNwj/5k9F
 sCenGv+NxUZBKk42F1fjV4HVxiHap28pRhU/RlJEz4buyIJSHJmALckd11hN7nKi5kqoppVowRVWx
 227j8GAUFtzojvTWviMW2boTfrARXSHSFXd/EztD1QCVnUai0CjOzhJOSrkKWBs0D0CI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6K6pP6ckR0iWKWkrtsOjaDE+10AoxzaCFV4VbGtAvVg=; b=c
 vgqht4yE97T+ks1BtuoOfcqwVam9eQC/IqxFnAPsPK1JzTVemuKIRcRp8esAEt69BLRq4zw8nj/Ds
 DU51yhrX6ioxZ+85h7X+6ihgKhyrbxZyB0ELJlLIWatXvetvzjCtEfkYtrpcBLeLx37zfC6v25/MG
 A2XYZSp1wODNhEQg=;
Received: from mail-wr1-f50.google.com ([209.85.221.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pC7DF-001eUN-VM for v9fs-developer@lists.sourceforge.net;
 Sun, 01 Jan 2023 22:53:54 +0000
Received: by mail-wr1-f50.google.com with SMTP id az7so440012wrb.5
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 01 Jan 2023 14:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=6K6pP6ckR0iWKWkrtsOjaDE+10AoxzaCFV4VbGtAvVg=;
 b=opxaYOUrR+AdxBg6UOhYfik0Zn1IOy5VJ0Lt3W47qkaIiIuKUvc0K3WDZ7LkaOOmHH
 aCQqs85tF1pzjB/DMw2EbGersILPi5Z6RW+5fJ0TyolQF0RN2zDd0HMhZHIpdOySbLkq
 gBc+8DyGL8cy7KDoTab9Ewv6fN6wI1SdNcH80FT28toP6yL+b3Vgvrv8ouxx17NQpv+M
 qvNXzNjUMzN31gbPhT0GLq213Vfek+2/EZiVR80EPGluBnaIqZTPCQFCUNqD6jATHQLz
 L7eRwtcwVNilO4r9XQpsE1AZ/G8RUGqkyClCSbI2Kq2wQ1m8Tv4cYfo5us93/e4ffDNf
 4KTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6K6pP6ckR0iWKWkrtsOjaDE+10AoxzaCFV4VbGtAvVg=;
 b=wyX2aNfKkBdvC2ynBDp7QM7grALdGks96yaSyQhAag8oSHEPfvBWxw3/QTo2FFuWm2
 0IbwDeCT4TWbNlU7DP0+fuWWzK/w0A1wxwJ2VJqmcgOfOxw4Tm14rLiJyh4caM1tVW3M
 Q6RGDsuYs5PCqIOnnUKAZzzd6tpXgKn6CO3lv7S4M4kQO+5QhZzK1LzoCVWK9b64IaFJ
 AsUtaeTXxEZapV558x2YbmOW0ebt4phe0R5xPjtY23vilnbNSbh1xhw1LhMEtPOJeVen
 itMf7JM5Yp78hkxAA6nC0XOsDZ9I5ord/sDcA0MjtN7ViOWIAeSrKjcVjORJePelXfgb
 ZUeA==
X-Gm-Message-State: AFqh2kqLP8rk4puIT6Li97J1zfsKJn73sQFwVA4ObWBGKwUgmREbL2IQ
 FoWttNTZPZRcCJwzWk9yHTTjKJGRYVdDb44IdOddAJt2ZnoouQ==
X-Google-Smtp-Source: AMrXdXtxE1M6997VzCbtAIbUHQJsgqTBmCqXTjCzW/HfvC3l9huJeEuJ5mv7/hiW2C6QXvrEr9NcVPx3YRQQonbVzig=
X-Received: by 2002:adf:e782:0:b0:262:e4f4:4698 with SMTP id
 n2-20020adfe782000000b00262e4f44698mr1770812wrm.139.1672613627119; Sun, 01
 Jan 2023 14:53:47 -0800 (PST)
MIME-Version: 1.0
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sun, 1 Jan 2023 16:53:36 -0600
Message-ID: <CAFkjPTmVB9fC=NAX4Kdk1TdmAOO3=ec4a8yOAp2Lyow18BX-7A@mail.gmail.com>
To: V9FS Developers <v9fs-developer@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I was looking at the trace stuff that got added to net/9p
 -- its pretty slick. Should we just convert most of our debug prints over
 to this? I've been adding a slew with debugging the cache and now I [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.50 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pC7DF-001eUN-VM
Subject: [V9fs-developer] tracing versus debug prints
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I was looking at the trace stuff that got added to net/9p -- its
pretty slick.  Should we just convert most of our debug prints over to
this?  I've been adding a slew with debugging the cache and now I
think I've been doing it wrong as the trace infrastructure gives so
much better granular control.

Thoughts?

A quick status update on the dir-cache work, I experimented with a
rewrite which moved all fid storage into the inode, but it blew up
quite spectacularly and then I spent the next 4 days working on
building out better debug infrastructure -- which looking at this
trace stuff being the last step.

      -eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
