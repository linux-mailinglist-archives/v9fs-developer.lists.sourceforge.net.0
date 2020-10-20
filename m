Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FEF293F50
	for <lists+v9fs-developer@lfdr.de>; Tue, 20 Oct 2020 17:10:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kUtHm-0003XB-5S; Tue, 20 Oct 2020 15:10:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <emma.reed@itchannelinsights.com>) id 1kUtHk-0003X4-Vz
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Oct 2020 15:10:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:Sender
 :MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ReRYa0jfIO1TZuSICshU5KqhfG6ud1jnHAMtMiKKG74=; b=CMc5oI3Yd5Ah98MSi5x+bZn6ra
 fFkAk/ZzDJ0fPvqBB3sc9ldm9yYoUQXQ4VMQzOyOzsx/loGkIffLVS7/+q8HrZmNKAbuw+B1IjtIw
 UVxpiINjkLgmEHgRmlyQp2gakSEPcVywpPz4Q/QpgZVQTbpiqtbEHt4PdB9hgD2m4yGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:Sender:MIME-Version:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ReRYa0jfIO1TZuSICshU5KqhfG6ud1jnHAMtMiKKG74=; b=O
 Wy2ZjZ4vpBoOeaWm1iIa6oiolDgBHTHG5Em9D0YTlKIrXJe/3w+G1gDxe5p1U1/CilW8NbCdzWFu5
 r66ZHK0p4gUoYhQmkuYcqTleyrS3hmF7fE5RGVsPTSLKBweI7i9Y3Dd1RykCiSDvGt7Upm5MU2yXf
 vMP9Li9foyaUfzJw=;
Received: from mail-qv1-f67.google.com ([209.85.219.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kUtHd-00HSun-00
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Oct 2020 15:10:48 +0000
Received: by mail-qv1-f67.google.com with SMTP id w5so991525qvn.12
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 20 Oct 2020 08:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itchannelinsights-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=ReRYa0jfIO1TZuSICshU5KqhfG6ud1jnHAMtMiKKG74=;
 b=M6bYftj4fjLnUjwPoJcivX5GWKJgkaCANRZR5dIDqzTlb96N7Y324+ZxS9etshZ/Sk
 4Tw6RYrYJbCEJlnpN1yK11WIAlmhWx507yVEvX0W+dk5HXRp+DDPimEslHtSyHUEFpZ8
 GkFdMdq7wQ6GqdDB4N59MdECI51VZETLILLD/0Jdbt7Qcnv+9gas3LF0uAT40Jc8PgBV
 HE09sKuTZXEq08ZudsUAVeFDI5oCkd8BY0rVtZvLXW2uRNs9sbmqsQyh19H47ZT8LdgZ
 4DpeK68aiLuYBOBHFrfwnVnMVZ60kllberu6T9K81cCYTokxl4Xkc3eftzvRB2ttRZdi
 pzmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=ReRYa0jfIO1TZuSICshU5KqhfG6ud1jnHAMtMiKKG74=;
 b=YSVaScL5QRG0K3q++V5uTXdcXIQxLK0ICZz5QzfDdnuPt91QAa9LAjLz9uqzhmkZzx
 F0Sp5NSLJ85v8SMg0kX+LDoT2O7GT+6EpBfhXflQKeym6WpmTpBCZ4UT+/kDJltiQbhP
 /Gfv+X7sBwcnL4yNMgusCYicfiVO4HmVI3qhDrh8AFI4rp/zhymg0N8ZzdzgVbFGnotz
 njG7QK+wJzDdlHSG4lPgViFAfZ4QZRGO208Iuz5xLPS97N4ijuX8sJGy3+ZTtJ7nr7Ko
 bxI3/JUhAkcQok8fboX2mPjDFRxjmwoLOZ5wLho7/R1bmXFZT863NhG2QV9zCGdpVKza
 PZkQ==
X-Gm-Message-State: AOAM530t0f9AXXuxZKqdQnYpEmPbzABOOkxVOam3gykz0qgfLOaBmyqw
 wwcIndlx4pZaeOTLYrD0kd4SEpy4jWAoWtUhEnH7eJ0riTjA0Hqn
X-Google-Smtp-Source: ABdhPJz7D/f3evq3pDsL2zxed6F0rZBYWmAznyexFKxuI5B06QckMWhjQoJt7dyhnefCd75O3024olSke3xJnpZW2eM=
X-Received: by 2002:ad4:456c:: with SMTP id o12mr3658459qvu.48.1603202819451; 
 Tue, 20 Oct 2020 07:06:59 -0700 (PDT)
Received: from 25967898751 named unknown by gmailapi.google.com with HTTPREST; 
 Tue, 20 Oct 2020 07:06:58 -0700
MIME-Version: 1.0
From: emma.reed@itchannelinsights.com
Date: Tue, 20 Oct 2020 07:06:58 -0700
X-Google-Sender-Auth: GCBJWctQRAaE_gpBVsba7KLNZLA
Message-ID: <CACYYbfO8daZr2ZMuk7hFO++MyCCfZsQJas58rtZPnXGYrkqxNQ@mail.gmail.com>
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.67 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1kUtHd-00HSun-00
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Vmware Users Record.
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

KkhpLCoKCkkgcmVhbGx5IHRoaW5rIHlvdSBjYW4gSW5jcmVhc2UgeW91ciBzYWxlcyBncm93dGgg
YnkgYWNxdWlyaW5nICpWbXdhcmUKVXNlcnMgcmVjb3JkLioKCipXZSBhbHNvIGhhdmU6KiAqUmVk
IEhhdCBVc2VycywgQ2lzY28gVXNlcnMsIFZlZWFtIFVzZXJzLCBOdXRhbml4IFVzZXJzLkFuZApt
YW55IG1vcmUuKgoKKlBsZWFzZSBsZXQgbWUga25vdyB5b3VyIGludGVyZXN0IHNvIHRoYXQgSSBj
YW4gcHJvdmlkZSB5b3UgbW9yZQppbmZvcm1hdGlvbi4qCgpMb29raW5nIGZvcndhcmQgdG8gaGVh
ciBmcm9tIHlvdS4KCipUaGFua3MsKgoKKkVtbWEgUmVlZCoKCipNYXJrZXRpbmcgTWFuYWdlcioK
CgoKSWYgeW91IGRvbuKAmXQgd2FudCB0byByZWNlaXZlIGFueSBtZXNzYWdlIGZyb20gdXMgdGhl
biBwbGVhc2UgdHlwZSDigJxMZWF2ZQpPdXTigJ0gaW4gdGhlIFN1YmplY3QgTGluZS4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVy
IG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
