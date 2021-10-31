Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CFD4410B2
	for <lists+v9fs-developer@lfdr.de>; Sun, 31 Oct 2021 21:03:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhH3G-00039a-2n; Sun, 31 Oct 2021 20:03:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support-amazon.jp@w1z5pv5.cn>) id 1mhH3A-00039P-5v
 for v9fs-developer@lists.sourceforge.net; Sun, 31 Oct 2021 20:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pAdgt9XF021K/+XumTCuIx1BRRK9K33fhfhcaKha36w=; b=Zs283PEOXp0ATN5t0/vWoPQrCk
 cKYqLt/V4hTa5LuXG2JJdLPw9JAxCviitHZULKmjzBlZRXR7pgfBdgBXcKQPKDVGlYSVYf5OGZKnA
 5/lHkBmhE7FQu43MLlLy4VlFnbgoeqbE0uQiW2zULhjKvhJw9dlTH9Xp5WPhQgNnUkjo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pAdgt9XF021K/+XumTCuIx1BRRK9K33fhfhcaKha36w=; b=P
 90fhahlRJ44T1BKwMldGEGIb4DEEtF8yOHmdMLXryyqSKIrdEQZLaWmaUsjf8c8f7DGx+BG7zr0Lg
 /DAvtfwT9dX5yvylhWUYkYknv8qtjPAVb/Ab5bx4cFdkfjRsOmokIKWwtWAS6wgJBzVQZbpxiGbg9
 a7uxCdFwo8l9bWZ8=;
Received: from w1z5pv5.cn ([117.50.172.175] helo=mail.w1z5pv5.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhH33-0007qH-Is
 for v9fs-developer@lists.sourceforge.net; Sun, 31 Oct 2021 20:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=w1z5pv5.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=support-amazon.jp@w1z5pv5.cn;
 bh=pAdgt9XF021K/+XumTCuIx1BRRK9K33fhfhcaKha36w=;
 b=HnMH3jvh4E5SEqunLyulu132kBkEN1Mep3mhklUjDkzTxJC77Ko+A/0xjo/dsTM2BF4sn8M5zD91
 Jqq2dzAuD7pIQIc1pU/ShkCxRJNaRGjg2N1j0MR4YsP+zsn2Fvn5wZCpzwngfrp3+mDXDglKqkA/
 zd1IErQj4TM8uCrETfE=
Date: Mon, 1 Nov 2021 05:03:32 +0900
From: "Amazon.co.jp" <support-amazon.jp@w1z5pv5.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20211101050341574626@w1z5pv5.cn>
Mime-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazonお客様 平素は Amazonをご利用いただき、誠にありがとうございます。
    ご利用の Amazon アカウントで異常な活動が検出されたため、アカウントを一時保留にし�
    [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: ax1x.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1mhH33-0007qH-Is
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQQW1hem9u44CR44Ki44Kr44Km44Oz44OI?=
	=?utf-8?b?44Gu5Yip55So54q25rOB44KS44GU56K66KqN44GP44Gg44GV44GE?=
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

DQogDQoNCg0KDQpBbWF6b27jgYrlrqLmp5gNCg0K5bmz57Sg44GvIEFtYXpvbuOCkuOBlOWIqeeU
qOOBhOOBn+OBoOOBjeOAgeiqoOOBq+OBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAgg0K
44GU5Yip55So44GuIEFtYXpvbiDjgqLjgqvjgqbjg7Pjg4jjgafnlbDluLjjgarmtLvli5XjgYzm
pJzlh7rjgZXjgozjgZ/jgZ/jgoHjgIHjgqLjgqvjgqbjg7Pjg4jjgpLkuIDmmYLkv53nlZnjgavj
gZfjgIHkv53nlZnkuK3jga7jgZTms6jmlofjgoTjgrXjg5bjgrnjgq/jg6rjg5fjgrfjg6fjg7Pj
gpLjgq3jg6Pjg7Pjgrvjg6vjgYTjgZ/jgZfjgb7jgZfjgZ/jgIINCuOCouOCq+OCpuODs+ODiOOB
uOOBruOCouOCr+OCu+OCueOCkuWGjemWi+OBmeOCi+OBq+OBr+OAgeOCteOCpOODs+OCpOODs+OB
l+OBpueUu+mdouOBruaMh+ekuuOBq+W+k+OBo+OBpuOBj+OBoOOBleOBhOOAguW/heimgeOBquaD
heWgseOCkuOBlOaPkOS+m+OBhOOBn+OBoOOBhOOBn+OCieOAgeW9k+OCteOCpOODiOOBp+iqv+af
u+OBruS4iuOAgTI0IOaZgumWk+S7peWGheOBq+i/lOS/oeOBhOOBn+OBl+OBvuOBmeOAgg0K44GU
5Zue562U44KS44GE44Gf44Gg44GR44Gq44GE5aC05ZCI44CBQW1hem9u44Gu44GU5Yip55So5Yi2
6ZmQ44GM57aZ57aa44GV44KM44KL44GT44Go44KC44GU44GW44GE44G+44GZ44Gu44Gn44CB5LqI
44KB44GU5LqG5om/44GP44Gg44GV44GEDQrmnKzku7bjgavjgaTjgYTjgabjgZTov7fmg5HjgpLj
gYrjgYvjgZHjgZfjgb7jgZfjgZ/jgZPjgajjgpLjgYroqavjgbPnlLPjgZfkuIrjgZLjgb7jgZnj
gIINCuS9leWNkuOAgeOCiOOCjeOBl+OBj+OBiumhmOOBhOeUs+OBl+S4iuOBkuOBvuOBmeOAgkFt
YXpvbuOBruOBvuOBn+OBruOBlOWIqeeUqOOCkuOBiuW+heOBoeOBl+OBpuOBiuOCiuOBvuOBmeOA
gg0KDQoNCg0KDQroqbPjgZfjgY/jga/jgZPjgaHjgokNCg0KDQoNCg0KDQoNCkFtYXpvbuOBruOB
vuOBn+OBruOBlOWIqeeUqOOCkuOBiuW+heOBoeOBl+OBpuOBiuOCiuOBvuOBmeOAgg0KDQoNCg0K
DQrCqSAxOTk2LTIwMjEsIEFtYXpvbi4gSW5jLiBvciBpdHMgYWZmaWxpYXRlcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWls
aW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
