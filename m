Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FB8B0CC37
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Jul 2025 23:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kxpub9UeigY+dxwiImLuecdwicb0UOXlFSCYbGqeRe0=; b=WCIdb8QkdtjgnCM5PFgj+JzJQk
	uf7LMqJz6ZpoK2ZgsUgdKfeJr9Dm+cm70rxJRsx84VfgYzkHDWtK5Ol9RFPUNxiDJCvXa9Zs5thcT
	8fCkMdeR6Sn2nIUmRzkeSE/9nDTrIFGQUCxppfd8dxSUNi0PaSGrQUWP/0rhoMlhbXCw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1udxfv-0007F7-EJ;
	Mon, 21 Jul 2025 21:03:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <noreply648@chehuzso.art>) id 1udxfu-0007Ez-2A
 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Jul 2025 21:03:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HKvFEjV/xjol7AkhGiowXvuPcMg5lo/DJIhCZUWXc3M=; b=dscqlS6+VVfw4s5RLN0AGN8+zV
 +ObH9653tEirc9HV+epziqOhfntlhd7UnohEau2xb3iCR5H0JewBeIOAXQXLL3nX4tEMCjbSz3eqe
 Uza/d9te4Dpe2xRkk7+3JzieoJdk2xRJA624FrYq/+faU8tpNQSNhNbow00uQ67m4gTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HKvFEjV/xjol7AkhGiowXvuPcMg5lo/DJIhCZUWXc3M=; b=D
 9NuvwaE3YYNJEP6YSX9RqTa1kNPvtU9zglqmxSTpTVPhphGxq3fuXHX1Zh2rBxbVx6+kK+YekPTHb
 1UZOHPFPbG9fqPDp842O3ExwZeFkA9KYxczLxOH0K/i5mdS9J8WKF83TYa022x+kiuAAHTr/SSN7l
 kaCvG+Y2RbRvT1TM=;
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1udxft-0007IE-Dk for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Jul 2025 21:03:54 +0000
Received: by mail-pf1-f196.google.com with SMTP id
 d2e1a72fcca58-73c17c770a7so5483264b3a.2
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 21 Jul 2025 14:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chehuzso-art.20230601.gappssmtp.com; s=20230601; t=1753131822; x=1753736622;
 darn=lists.sourceforge.net; 
 h=mime-version:date:subject:to:from:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=HKvFEjV/xjol7AkhGiowXvuPcMg5lo/DJIhCZUWXc3M=;
 b=MbGBY4lFGWp/SYyXJsLyjWMa8BCOer5lHSHhdqB4qPevo+PUzrksTIOZQoxFgAMOfW
 DiB9jDNw5rE3M5NcVyJ93O8wccsnxmpKZB7Iky9hN7jMU8AzGnlayVxq5AqBBGVIlfUM
 HFGzA0oHqChzUgOOsrBI3OzxZoZTWdLFEBmWJ+j4sYZrOP4n2A3wV3tpIApdLsbK9qlz
 Rav6XP+/oBskDDxULvJyxC5beH2T3K28mToX5zKhEQVB6bOG8PSTuoNluK9BMSijz6+L
 GiUJ0xAnBqv5/LkUdBNA6d2qSlyOsaBjX/69laJRXLZUtkvKof4iUuQj2OxvmjiLcGKH
 zZvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753131822; x=1753736622;
 h=mime-version:date:subject:to:from:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=HKvFEjV/xjol7AkhGiowXvuPcMg5lo/DJIhCZUWXc3M=;
 b=rVZiprkFwlEXb0XfX0TBRyvJs4dyGoCMZeBsqiYuQ5+DSWuoFA8j6S+/kNtb6t2A/y
 +3js1IXwwajyga6FtgRk4CCTnqCtnIKZLp9ysOGcqDsPzFcNmVU2488EfkSxB2mgkwKr
 e7aZzUgurolpFQU123zS6eeXr3Tpy+zoUn7t0VycgPW7WVEZOXEsnzeM3WlGj/yhm+3g
 CbPQREXfhQpa86Yl2u19zS32pBvQET4iFiXcTMwqSGubu0lCfSyipFKRBUXwiBe37RRj
 50yNQ1za9zLJ/IggmWbevo0it3v4Hhht+e+UxQaK/Qkus7cWWXnzKbuEIs2bra8ciETL
 ff5w==
X-Gm-Message-State: AOJu0Yy0gBDma0EM/ThOke3bEeGV8/oFzcOMNKubYXmJ5NqV6y0rAeNR
 J3yS/2q466weJISKNRSFJ1AK5QacuRvW5BK6yq7OlRhuV5JUeoj1pjbDwnW00tZh+bj1Jc53c6c
 JVduqGIqB
X-Gm-Gg: ASbGncuiv3Qf+YQl7I1gQ4ArzStZyc1UMjAUhBO/x41nyZtgxNe2+cgmVx4+iqs8UtY
 zzMhqNt/qfuzpaJhrTgwbHPU213jKHUbEb2++wDZVH3sFJN/ymojWequjrCLzkhn6qD2Xqe3S5t
 RP71XL0Brd5y4+7Od6tpoOIOaLvezYkm2BQgAB8ammuhnMpFq1mWRbmhaZGA8YnUxztpWiP/cPn
 xdqAGyFz6P7GM/1qzNj5nXt115owOgkW9kNwUchm3tfbINq+dmzDQE/WDWsAdt5Cfhyi1FpS3hR
 CTarTS10ebtf3ZpVmWzaE6USk7d5ch8FLeJZTRFV3qqkz8irnmMgnPPVeyowOxe3q/7wginJioi
 aqI+G/2wiNqpCj6vxyMtbLu5rQWHt7qofac821ZoX4frLy7iTUFE=
X-Google-Smtp-Source: AGHT+IFWxaky6kp6EKRLuasXRfrD0lnmd/anAKWGsnk3jSLXVkkKGoyQQPmTDqBgmRGUP0p9D86iWg==
X-Received: by 2002:a05:620a:2b84:b0:7e3:47e6:a842 with SMTP id
 af79cd13be357-7e347e6aaaemr2500266985a.0.1753130317394; 
 Mon, 21 Jul 2025 13:38:37 -0700 (PDT)
Received: from aknaxnet.ru ([2607:fb90:a081:bd65:b1b6:9cb4:a776:7613])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7e356c6403csm463652485a.82.2025.07.21.13.38.36
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Jul 2025 13:38:37 -0700 (PDT)
Message-ID: <4526005464b08f6bc29ff06a3b2d1d74@chehuzso.art>
To: "=?utf-8?Q?v9fs-developer@lists.sourceforge.net?="
 <v9fs-developer@lists.sourceforge.net>
Date: Mon, 21 Jul 2025 23:38:33 +0300
X-Priority: 3
X-Mailer: Giwnem Pannj 4.23
MIME-Version: 1.0
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  本人確認情報の更新に関する重要なお知らせ
    平素より野村證券をご利用いただき、誠にありがとうございます。
    現在、お客様の本人確認情報が 更� [...] 
 
 Content analysis details:   (1.5 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.196 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1udxft-0007IE-Dk
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ6YeO5p2R6K2J5Yi444CR44CQ6YeN6KaB?=
	=?utf-8?b?44CR5pys5Lq656K66KqN5oOF5aCx44Gu5pu05paw44Gr44Gk44GE44Gm?=
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
From: =?utf-8?Q?=E3=80=90=E8=87=AA=E5=8B=95=E9=85=8D=E4=BF=A1=E3=83=A1=E3=83=BC=E3=83=AB=E3=80=91?=
 via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: =?utf-8?Q?=E3=80=90=E8=87=AA=E5=8B=95=E9=85=8D=E4=BF=A1=E3=83=A1=E3=83=BC=E3=83=AB=E3=80=91?=
 <noreply648@chehuzso.art>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCuacrOS6uueiuuiqjeaDheWgseOBruabtOaWsOOBq+mWouOBmeOCi+mHjeimgeOBquOBiuef
peOCieOBmw0K5bmz57Sg44KI44KK6YeO5p2R6K2J5Yi444KS44GU5Yip55So44GE44Gf44Gg44GN
44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQrnj77lnKjjgIHjgYrl
rqLmp5jjga7mnKzkurrnorroqo3mg4XloLHjgYwg5pu05paw5pyf6ZmQ44KS6L+O44GI44Gm44GK
44KK44G+44GZ44CCIA0K6YeR6J6N5bqB44Gu5a6a44KB44KL5rOV5Luk77yI54qv572q5Y+O55uK
56e76Lui6Ziy5q2i5rOV77yJ44Gr5Z+644Gl44GN44CB57aZ57aa55qE44Gq44GK5a6i44GV44G+
56K66KqN44GM576p5YuZ5LuY44GR44KJ44KM44Gm44GK44KK44G+44GZ44CCIA0K5Lul5LiL44Gu
44GU5a++5b+c44KS5pyf6ZmQ5YaF44Gr5a6M5LqG44GE44Gf44Gg44GR44Gq44GE5aC05ZCI44CB
5LiL6KiY44Gu44KI44GG44Gq5Yi26ZmQ44GM55m655Sf44GZ44KL5Y+v6IO95oCn44GM44GU44GW
44GE44G+44GZ44CCIA0KDQogIOS4gOmDqOOCguOBl+OBj+OBr+OBmeOBueOBpuOBruOBiuWPluW8
leapn+iDveOBruWBnOatoiANCiAg44Kq44Oz44Op44Kk44Oz44K144O844OT44K544Gu44Ot44Kw
44Kk44Oz5Yi26ZmQIA0KICDlj6Pluqfjga7kuIDmmYLlh43ntZDjgoTlh7rph5HlgZzmraIgDQrj
gZTkuI3kvr/jgpLjgYrjgYvjgZHjgYTjgZ/jgZfjgb7jgZnjgYzjgIHjgYrlrqLmp5jjga7lpKfl
iIfjgarjgZTos4fnlKPjgpLjgYrlrojjgorjgZnjgovjgZ/jgoHjgavjgoLjgIEg5b+F44Ga5pyf
6ZmQ5YaF44Gn44Gu44GU5a++5b+c44KS44GK6aGY44GE55Sz44GX5LiK44GS44G+44GZ44CCIA0K
5LuK44GZ44GQ56K66KqN44GZ44KLIA0K5a++5b+c5pyf6ZmQ77yaMjAyNeW5tDfmnIgyM+aXpeOB
vuOBpw0KDQrigLvjgrfjgrnjg4bjg6Djga7pg73lkIjjgavjgojjgorjgIHmnJ/pmZDjgpLpgY7j
gY7jgZ/loLTlkIjjga/oh6rli5XnmoTjgavliLbpmZDjgYzpgannlKjjgZXjgozjgovloLTlkIjj
gYzjgZTjgZbjgYTjgb7jgZnjgIINCuKAu+OBmeOBp+OBq+OBlOWvvuW/nOa4iOOBv+OBruOBiuWu
ouanmOOBr+OAgeacrOODoeODvOODq+OBr+egtOajhOOBl+OBpuOBhOOBn+OBoOOBhOOBpuWVj+mh
jOOBlOOBluOBhOOBvuOBm+OCk+OAgg0K4oC75pys44Oh44O844Or44Gv6YCB5L+h5bCC55So44Gn
44GZ44CC44GU6L+U5L+h44GE44Gf44Gg44GE44Gm44KC44GK562U44GI44Gn44GN44GL44Gt44G+
44GZ44Gu44Gn44GU5LqG5om/44GP44Gg44GV44GE44CCCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZz
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
