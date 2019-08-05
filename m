Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B73A8104E
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 04:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KA7sR488UN3gbH0sKLzl1LoywGbJQkfrPlBvlhXyy1s=; b=KP1+YMGnn+4dqr
	UZRhrA1CJnZGetabA3QRVF8pcJsTMlJhBp1tG7P2mD3yJ3lVJeqP/b8eFDjXO/Ah7eq6p69jSjDCM
	+u4Jg4bSl/ue4ymTvtT5EkxcfEvladOphGPQU3r6TFQLGe9E/Yr53i4OSYJmdDdZWNhu+XUIg9NFv
	aqqoeJVbJ3fpq/Pgci01pbqwsDlNLR0o2gbVaNivVeTfcYxZBkS38VcaWjIVeKqT1Fpr9mlsDD9ur
	2UtGeQ4p/ky2J5uprnpapEdMd1Ze6ezmfIR1t7Do96AAro1sQ7tS63q2qLaHSVxn2HBZ5EAwxyZf3
	1UPSBoHpjwHi3hJdjhxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huStq-0005Xe-Nk; Mon, 05 Aug 2019 02:39:02 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huStk-0005XI-Ko
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 02:38:58 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190805023851epoutp042109a9200aef07f0912ea911a6bf6d6d~35mhpe_SY2973329733epoutp04E
 for <linux-nvme@lists.infradead.org>; Mon,  5 Aug 2019 02:38:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190805023851epoutp042109a9200aef07f0912ea911a6bf6d6d~35mhpe_SY2973329733epoutp04E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564972731;
 bh=gudBUgihpkyo7Z0UeFAg1wE9XngSMyX279fE8H1hDGs=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=Pry117ABMJ9G60PPBMmdh8Xg8umQ2PFHa64dgmm0o1aKj53EZ1D0KKHKno/aQ6i9R
 NjIDqb+gpgy7V4mtZSmJQDvPHZ+cty/Mi1ylRb2o7RjIesHvAPv+LvvjTeHsvwnvJ3
 XvhPgtX1WMndN9lP8XQta0zB9iL5DzRJbfYshMnU=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20190805023851epcas2p4accc424f69b81a4f3a30b26527fc7b2a~35mhWSC8Y1986919869epcas2p4S;
 Mon,  5 Aug 2019 02:38:51 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.186]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 46225P3BCHzMqYkk; Mon,  5 Aug
 2019 02:38:49 +0000 (GMT)
X-AuditID: b6c32a45-ddfff7000000103c-61-5d4796b8b3d0
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 BF.F3.04156.8B6974D5; Mon,  5 Aug 2019 11:38:48 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH] nvmet: fix data units read and written counters in
 SMART log
From: Minwoo Im <minwoo.im@samsung.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>, "keith.busch@intel.com"
 <keith.busch@intel.com>, "hch@lst.de" <hch@lst.de>, "sagi@grimberg.me"
 <sagi@grimberg.me>, Minwoo Im <minwoo.im@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <1564970259-12279-1-git-send-email-tomwu@mellanox.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190805023848epcms2p2de4d04f6606b26740027fe2a7a023759@epcms2p2>
Date: Mon, 05 Aug 2019 11:38:48 +0900
X-CMS-MailID: 20190805023848epcms2p2de4d04f6606b26740027fe2a7a023759
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjm2zluZ9riOLXejGqcsMhSd8StU6QIZS2sEIp+RGUn9+Gk3dqZ
 doFKo4ssiAaVtu5XK2uVWq4slJndtIx+lIYOES9kqdndymjHM6l/D8/3vO/zvO/3UoT6rDyW
 yrM6scPKmxl5OHmnfpYuwXd0yTptxe4Z3JXyBhnXcv46yQUavsi405e6FVxjZ52C62msIzjv
 +0GSa2v2yrnSoacoXWloDtwiDefvv5MZKi/sMtS0FsoNPSX1MsPBqqsoS77GvMCEeSN2aLA1
 x2bMs+amMpkrsxdm6/RaNoGdx81lNFbeglOZRcuyEhbnmYOpGE0Bb84PUlm8IDBJaQsctnwn
 1phsgjOVwXaj2c6y9kSBtwj51tzEHJtlPqvVJuuCyg1m05OSDfZr1NZXT8rkhei33IWUFNAp
 EPj9iXShcEpN+xAc7/iqcCGKUtGRMOKLEjVR9Eo49bErTKTV9DT40aeV6FkwUNMUJmI5PRMK
 j/SNtommnyJwnXmpEB8I2o3g57EMyUsFpfu7SQlPhuqy20jESnohfPt8kZD4GGgt71eM4cFH
 p5GEo2Fv4HlIEwkdwzVIzAM0QGAgTYK7oOoyJ0YAeg+Clg/XQ6VJUNQ7NGqropdDradNJmKS
 joNf3sFQnEXw7LgnFHkaVPefIMSeRHDGG/eSpPbT4eFbUlKMh+L6EcXYUL5TXTIJT4chvz8U
 chKUvXofWrIBSn7WImnJLgSvT1aSh5DG82/Pnv+MPf+MzyDiKpqA7YIlFwvJdvb/n61Ao+cZ
 n+FDpS+W+RFNIWacSjNlyTp1GF8gbLP4EVAEE63aTAQplZHfth07bNmOfDMW/EgXnN9NxMbk
 2ILHbnVms7pkvV47T8fp9MkcM1FVGdG6Vk3n8k68CWM7dozVyShlbCHKk3F3Oke63MWufeyM
 8uWJGZWrz9niI5ofeB8bt65WxrzsKO1TnJiAp4bbiooHl+6PPrfCtWPA3j2cmr7TXf1maDY+
 UISPaTalh7W29xjjvgfIJlOOd8u37XUrHDe72yu0NyJdd9OKUi5k9UbEzdm4KnOcfun6/oLM
 yMNb3MPFdX8YUjDxbDzhEPi/kbNp/LQDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190805015817epcas5p2617320fe4cae019ab373710395ca43ed
References: <1564970259-12279-1-git-send-email-tomwu@mellanox.com>
 <CGME20190805015817epcas5p2617320fe4cae019ab373710395ca43ed@epcms2p2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_193857_020496_E41E21F3 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Reply-To: minwoo.im@samsung.com
Cc: Tom Wu <tomwu@mellanox.com>, Shlomi Nimrodi <shlomin@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Linux-nvme <linux-nvme-bounces@lists.infradead.org> On Behalf Of Tom Wu
> Sent: Monday, August 5, 2019 10:58 AM
> To: Linux-nvme <linux-nvme@lists.infradead.org>; keith.busch@intel.com;
> hch@lst.de; sagi@grimberg.me
> Cc: Shlomi Nimrodi <shlomin@mellanox.com>; Max Gurtovoy
> <maxg@mellanox.com>; Tom Wu <tomwu@mellanox.com>; Israel Rukshin
> <israelr@mellanox.com>
> Subject: [PATCH] nvmet: fix data units read and written counters in SMART log
> 
> In nvme spec 1.3 there is a definition for data write/read counters
> from SMART log. (See section 5.14.1.2):
> 	This value is reported in thousands (i.e., a value of 1
> 	corresponds to 1000 units of 512 bytes read) and is rounded up.
> 
> However, in nvme target where value is reported with actual units,
> but not thousands of units as the spec requires.
> 
> Signed-off-by: Tom Wu <tomwu@mellanox.com>
> Reviewed-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
