Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCA189C3F
	for <lists+linux-nvme@lfdr.de>; Mon, 12 Aug 2019 13:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86yzM0lD+vSdV90aia5TpkTNc8GBglzL9NufGbGykLw=; b=BQ8zhRIH58tKyI
	T33WkZEhNrQSRwp6VhHf7EmQsnEtcjV0dxwcHjOpHpelcJRfhEDh/pXcMv+4ZhO0xC17jjpiG2x4p
	PFOgDKyFBIpG5WKpYpPas2O8OT9VJXO0TXoyUCWr4gQDTfuRQezVRysC/R0ERcxEv+aAQQcQ6sApp
	OacqXO6I1ZUSiq3a89TZUiIvQ/3NV9bj/r7ZeD7yLfKHMvnGi8QIGYsVDghCKQkiggFXkMVP5ijO+
	EXJnYZlfE5pAKNCiM2OYDgjQ2b841bME84OuVzLkE0othUTcVY5vN4mNaf7a2ImSEgp/MBwxk7ZVE
	x3V9HeCOsmyJFTrd2j0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx85k-0007Oi-4w; Mon, 12 Aug 2019 11:02:20 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx85R-0007It-Pa
 for linux-nvme@lists.infradead.org; Mon, 12 Aug 2019 11:02:03 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190812110157epoutp0360915c50f17aa6826332f5bd6fad5a41~6J_yw_v7I2566825668epoutp03Q
 for <linux-nvme@lists.infradead.org>; Mon, 12 Aug 2019 11:01:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190812110157epoutp0360915c50f17aa6826332f5bd6fad5a41~6J_yw_v7I2566825668epoutp03Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565607718;
 bh=Nypi7BEtbDgF2haDXtY/1doMHgGjm7455xEv3J7OwRY=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=sFX2G8N0OMrktOHehMBm6nSdBK1rdaA3D5esD9Vny8HlPsr/SKHnM7Rm8rdkmzxeq
 SNX4sX0ggSXsuzyr5empTYiBv4CyzUO9mLdsG8oZ/uim7bY5iTNPcaX/sUj4pYl9AH
 YWsDPV3pcr8UMB/UXeS0BFBmokU3SzOPEqqDCw5U=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20190812110157epcas2p453852520a4ac5eea52786fcdc38bcc31~6J_yhsxxq3186931869epcas2p4S;
 Mon, 12 Aug 2019 11:01:57 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.189]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 466Xwh3fmfzMqYkV; Mon, 12 Aug
 2019 11:01:56 +0000 (GMT)
X-AuditID: b6c32a48-f1fff70000001010-0b-5d5147240c94
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 6A.27.04112.427415D5; Mon, 12 Aug 2019 20:01:56 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH] nvme: simplify nvme_req_qid()
From: Minwoo Im <minwoo.im@samsung.com>
To: Sagi Grimberg <sagi@grimberg.me>, Minwoo Im <minwoo.im.dev@gmail.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <4ce851fc-2560-cb45-9733-bb8ff4a5069e@grimberg.me>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190812110155epcms2p4f44ce4ea4d6cbcceae7a466c98897549@epcms2p4>
Date: Mon, 12 Aug 2019 20:01:55 +0900
X-CMS-MailID: 20190812110155epcms2p4f44ce4ea4d6cbcceae7a466c98897549
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLJsWRmVeSWpSXmKPExsWy7bCmha6Ke2CsweuDEhb/9xxjs1i5+iiT
 xaRD1xgt5i97ym7xq5Pb4tnpA8wW616/Z3Fg95jY/I7dY+esu+we5+9tZPHYtKqTzWPzknqP
 3Tcb2Dz6tqxiDGCPyrHJSE1MSS1SSM1Lzk/JzEu3VfIOjneONzUzMNQ1tLQwV1LIS8xNtVVy
 8QnQdcvMAbpHSaEsMacUKBSQWFyspG9nU5RfWpKqkJFfXGKrlFqQklNgaFigV5yYW1yal66X
 nJ9rZWhgYGQKVJmQkzF183/2goMsFS93nmJuYNzP3MXIySEhYCLxuOU7excjF4eQwA5GiWf7
 lgMlODh4BQQl/u4QBqkRFjCSWH3+ITtIWEhAXuLHKwOIsKbEu91nWEFsNgF1iYapr1hAxogI
 9DFKzF10mAnEYRZoZpSY+Pg2G8QyXokZ7U9ZIGxpie3LtzKC2JwC9hKLz/axQsRFJW6ufssO
 Y78/Np8RwhaRaL13FupoQYkHP3czghwkISAhce+dHYRZL7FlhQXIWgmBFkaJG2/WQrXqSzQ+
 /wi2llfAV6JlzRSwVSwCqhLTbryEOs1FYlEXxCpmoB+3v50DDgZmoCfX79KHGK8sceQWC0QF
 n0TH4b/sME/tmPeECcJWlvh46BDUkZISyy+9hpruIfHl2k1WSCjvZJQ4vGki8wRGhVmIgJ6F
 ZPEshMULGJlXMYqlFhTnpqcWGxWYIMftJkZw0tTy2MF44JzPIUYBDkYlHt6InwGxQqyJZcWV
 uYcYJTiYlUR4S/4ChXhTEiurUovy44tKc1KLDzGaAv0/kVlKNDkfmNDzSuINTY3MzAwsTS1M
 zYwslMR5N3HfjBESSE8sSc1OTS1ILYLpY+LglGpgTO3LuPgi/9Wlq2KiqqKnjFZvjLyWfnLO
 hv3Hj4WUWcxw7fCO+tkd1Xt8Bv9/nSMmNZ9a3l17vX/q7XRmKZfIz2xVOs5RgQvPVi1SDQ+K
 2Bu2Yu/L7I183Je8z+9wnfaweJVVrZPUhNtO9yIEF08KvZNTxaMffz8zOFv7UlWIWu1epaAf
 Xi9OKrEUZyQaajEXFScCAIZt+rqwAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190805181113epcas3p2fe0b38b9075ca205e5a8beff77531c10
References: <4ce851fc-2560-cb45-9733-bb8ff4a5069e@grimberg.me>
 <20190804071902.31872-1-minwoo.im.dev@gmail.com>
 <CGME20190805181113epcas3p2fe0b38b9075ca205e5a8beff77531c10@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_040202_270437_44D6C280 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi, Sagi.

> > blk_mq_unique_tag() just makes a unique tag which holds not only the
> > tag, but also the queue_num of the hctx.  With this unique tag,
> > blk_mq_unique_tag_to_hwq is nothing but removing the tag from it.
> >
> > Therefore the qid or the I/O queues can simply be:
> > 	(struct blk_mq_hw_ctx *)->queue_num + 1
> 
> This pattern is not unique to nvme, perhaps add a helper for it
> in the block layer and modify the callers?

Sorry, but could you please elaborate a little bit more in detail that
Why the pattern is not unique to nvme ?

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
