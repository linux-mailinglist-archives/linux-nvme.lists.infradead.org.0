Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FBE22984
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 02:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+X/bF9qvmi309twjmVy7DIor7Unp8/vEIqyQuKp/xU=; b=dJwOub0CcQiCJg
	/z3sRmnOWf7jjoTIsqUi0BqqdHo0gSIc94q0CUdJxDKHSGQoEb78zmKgjT6V6vYn+u7R0Ngm+RGLU
	xW6xz2BVER43wdAEWfQnhQ1QUPigLxoE5d3E6sG5EA2fPDW5isvNLT09gaQWEJlqa4t4NvIki1W39
	HbaVEilfjXAyu0rIfGOeu+iUCs8aWJH0yZY9Vxr9b8EOmFPL78X4iLWEHf2z8zNKQ8ZX3h3tqm9D+
	XCfMp6eYH5z6DBSaN5oCl4dQX1L9g6vgZ+W4hrIbcO4MAhwA7I7uRMTmZ8JQihA9y9E86/hcnPp4J
	9dfc0usoRgE04T9QxfvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSWAE-00008l-58; Mon, 20 May 2019 00:28:26 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSWA7-00008K-Rd
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 00:28:22 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190520002813epoutp04b4796f6322ccc60cd06bd79ce2fb6436~gPJfChsW42299922999epoutp04F
 for <linux-nvme@lists.infradead.org>; Mon, 20 May 2019 00:28:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190520002813epoutp04b4796f6322ccc60cd06bd79ce2fb6436~gPJfChsW42299922999epoutp04F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558312093;
 bh=0NBbga+wgFAIWWdIC8hexKEdQ3ZMiejoZlGDxsj4G8U=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=bpH2AkXolGSSWXe30afvogMhNkSPOrjoTe7LURfc83FFiqnSwrQTW+vQCCJzaF5DP
 mzModk3J+TgrS0jO3w2Usussx+Hzq899Ylu08ra6jaoAfMYWum12UptSvVSofyp8+A
 jPTO+iclMi0obAoRYTtzMNa5uBy7kJahEYVu/8mI=
Received: from epsmges2p1.samsung.com (unknown [182.195.40.184]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20190520002810epcas2p4cec9a2c69340251a33491f62dc3046f3~gPJcBA1V_2968329683epcas2p4_;
 Mon, 20 May 2019 00:28:10 +0000 (GMT)
X-AuditID: b6c32a45-d5fff70000001063-c9-5ce1f495c040
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 AF.88.04195.594F1EC5; Mon, 20 May 2019 09:28:05 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH] nvme-cli: close fd before return
From: Minwoo Im <minwoo.im@samsung.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>, Minwoo Im <minwoo.im@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <BN8PR04MB57474B1D9FD8DC489487336986060@BN8PR04MB5747.namprd04.prod.outlook.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190520002805epcms2p747debe2606f1a42a2b27a6d665f5612d@epcms2p7>
Date: Mon, 20 May 2019 09:28:05 +0900
X-CMS-MailID: 20190520002805epcms2p747debe2606f1a42a2b27a6d665f5612d
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrNKsWRmVeSWpSXmKPExsWy7bCmue7ULw9jDFa/VrSYdfs1i8X8ZU/Z
 LX51cls8O32A2YHFY+esu+wem5fUe/RtWcXo0X6gmymAJSrHJiM1MSW1SCE1Lzk/JTMv3VbJ
 OzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwdoo5JCWWJOKVAoILG4WEnfzqYov7QkVSEj
 v7jEVim1ICWnwNCwQK84Mbe4NC9dLzk/18rQwMDIFKgyISfj6oSpzAVrmCuOH7/B3MB4gamL
 kZNDQsBEYu/bgyxdjFwcQgI7GCWe7VoFlODg4BUQlPi7QxikRljAVKKt6ykjSFhIQF7ixysD
 iLCmxLvdZ1hBbDYBdYmGqa9YQGwRgVqJd6uPgJUzC7hKrDmbBbGJV2JG+1MWCFtaYvvyrYwg
 NqdArMT17TPYIOKiEjdXv2WHsd8fm88IYYtItN47ywxhC0o8+LkbbLyEgITEvXd2EGa9xJYV
 FiB/SAi0MErceLMWqlVfovH5R7C1vAK+En1vroHZLAKqEnMOTYKqcZHobL4NNp4Z6MHtb+cw
 Q1yvKbF+lz7EeGWJI7dYICr4JDoO/2WHeWrHvCfQoFSW+HjoENSRkhLLL72GespDYvXfOWD1
 QgJtTBK7N4ZMYFSYhQjkWUj2zkLYu4CReRWjWGpBcW56arFRgSFyvG5iBCc8LdcdjDPO+Rxi
 FOBgVOLh/TDlYYwQa2JZcWXuIUYJDmYlEV5j9fsxQrwpiZVVqUX58UWlOanFhxhNgd6fyCwl
 mpwPTMZ5JfGGpkZmZgaWphamZkYWSuK8m7lvxggJpCeWpGanphakFsH0MXFwSjUwJu8qKY6a
 yWBt279OsafO1eX+NaG5xzfElM+eZL340Cl5yfeTzt+wLFu3pL6vap3o5OUmQddavtdMn79p
 6gTpj/IN4XLz3BxkDypOvnbI0DSm9H7etJmfFi921lH/MWf34re7A1a8El7qMqPgTsPNmx99
 ln6XP34361nPEsNyvfwyxv31Z1pO2CmxFGckGmoxFxUnAgAUVK9xjgMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190520002113epcas4p345b92c6d82619b92478af81e81392266
References: <BN8PR04MB57474B1D9FD8DC489487336986060@BN8PR04MB5747.namprd04.prod.outlook.com>
 <20190519175642.31815-1-chaitanya.kulkarni@wdc.com>
 <20190519184553.GC10876@minwooim-desktop>
 <CGME20190520002113epcas4p345b92c6d82619b92478af81e81392266@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_172820_231314_66E35BE7 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> This only covers the code path for nvme commands failure and not the
> errno codes ans thi ps mainly to make all the nvme error and return
> codes consistent.

I think I don't agree with that.  If you want to fix the leaked fd before
returning directly, then it should make it go to close_fd for the EINVAL
cases without adding -(negative) on it.

I think the PR can be merged regardless to errno update now, though.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
