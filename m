Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50081229C4
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 03:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xphDdWu6QfN+umoAc6OWMyWtksSvP1y9nV/JORWwsoM=; b=M9kBSluC+p+/CK
	P6G3jw3jAM9gIlfWuXgzp3XqP50evrcnB7L2FxSEzko5EcWHOuKlJUYabvo3++pWmGLotVhn+AIgw
	fI9fAebhf3Q2KwGJtU12cyj+6Uv5dljn72NFYEaUmhH8g0BYg7++cH6hZp+am9yjQpIbd3QYDI9+A
	JzgMUxZHnqotWRSnv6yvakI4VJXrgzdJ2++TNHX1T/su/yI2YOVgJ+It/gsApWrxLs5GEJd/YxgNc
	H4TQCUKUL21byXHT/Y2fp6zNrg8pWml+t3brnJoQXN1tnh1az5g8Y8ZOYdogeX9heKfdut+N8mnjh
	XdjcrdCu7R6tX9aQ+Z7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSXVI-0000tQ-Jf; Mon, 20 May 2019 01:54:16 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSXVC-0000t2-O0
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 01:54:13 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190520015405epoutp03589982747a3aa1b0d50166fef7268b66~gQUdmOEbQ2501625016epoutp03N
 for <linux-nvme@lists.infradead.org>; Mon, 20 May 2019 01:54:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190520015405epoutp03589982747a3aa1b0d50166fef7268b66~gQUdmOEbQ2501625016epoutp03N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558317246;
 bh=KyetsJElAem3k2u6ngT7l4bnwCey5n4KQ0v08NlNMkM=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=hRINeqBBPKKN0ay5n0WL434quROxtkKLxKRYNnXy5KVon27tR9Kgm89lUvVvwLAiy
 XeAl2ZbYeTfLpcGgerLQ3uvitWqzlNFzpuhTXIqw20H4OEM7I/AtV96y/7iPUlh2QK
 3dlJ26xWi4eLnA5savCS6UVFNdG1voDHVeeBiCD0=
Received: from epsmges2p1.samsung.com (unknown [182.195.40.187]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20190520015403epcas2p17dfbfb28a6c3db9558560c3f9041dad8~gQUbDZmmY2202222022epcas2p1t;
 Mon, 20 May 2019 01:54:03 +0000 (GMT)
X-AuditID: b6c32a45-d5fff70000001063-ce-5ce208b95032
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 B2.0A.04195.9B802EC5; Mon, 20 May 2019 10:54:01 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH] nvme-cli: close fd before return
From: Minwoo Im <minwoo.im@samsung.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <BN8PR04MB5747CE9613ADDE4BA1D6A5C986060@BN8PR04MB5747.namprd04.prod.outlook.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190520015401epcms2p413869afe9728ffc36248cf8e5e00888e@epcms2p4>
Date: Mon, 20 May 2019 10:54:01 +0900
X-CMS-MailID: 20190520015401epcms2p413869afe9728ffc36248cf8e5e00888e
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEKsWRmVeSWpSXmKPExsWy7bCmqe5OjkcxBnNPaFjMuv2axWL+sqfs
 Fr86uR2YPXbOusvusXlJvUf7gW6mAOaoHJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11D
 SwtzJYW8xNxUWyUXnwBdt8wcoD1KCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnAJD
 wwK94sTc4tK8dL3k/FwrQwMDI1OgyoScjG+fDzIXLBequHNqKmMD4wK+LkZODgkBE4mzb14z
 djFycQgJ7GCU+LF2F1sXIwcHr4CgxN8dwiA1wgKmEm1dTxlBwkIC8hI/XhlAhDUl3u0+wwpi
 swmoSzRMfcUCYosIREkcXrYdrJxZwFVizdksiE28EjPan7JA2NIS25dvZQSxOQViJf6sXsoO
 EReVuLn6LZz9/th8RghbRKL13llmCFtQ4sHP3WDjJQQkJO69s4Mw6yW2rLAA+UNCoIVR4sab
 tVCt+hKNzz+CreUV8JWYfuca2BgWAVWJjvuf2SBqXCRWrPsCFmcGenD72znMENdrSqzfpQ8x
 XlniyC0WiAo+iY7Df9lhntox7wkThK0s8fHQIagjJSWWX3oNNd1DYvXfOeyQIJ7LLHFx11b2
 CYwKsxChPAvJ4lkIixcwMq9iFEstKM5NTy02KjBEjthNjOD0puW6g3HGOZ9DjAIcjEo8vB+m
 PIwRYk0sK67MPcQowcGsJMJrrH4/Rog3JbGyKrUoP76oNCe1+BCjKdD/E5mlRJPzgak3ryTe
 0NTIzMzA0tTC1MzIQkmcdzP3zRghgfTEktTs1NSC1CKYPiYOTqkGRtck8aWBVxc/1t//pmAr
 891EE/YfmXP/PV50/lmVrUY5v4C6kkPcjC1HtIM27198cP2ODXv8S5+fUoo2POI16fcChba1
 C5xEj83JeNLaZVLuv3uStOr5iz8W9Glznyvxfha6wWjiItdVbGsbFp46Z1E8Zc2XF6G6zswX
 Ofef/hOQV/iBK4z9lqgSS3FGoqEWc1FxIgCMv9eJhQMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190520002113epcas4p345b92c6d82619b92478af81e81392266
References: <BN8PR04MB5747CE9613ADDE4BA1D6A5C986060@BN8PR04MB5747.namprd04.prod.outlook.com>
 <BN8PR04MB57474B1D9FD8DC489487336986060@BN8PR04MB5747.namprd04.prod.outlook.com>
 <20190519175642.31815-1-chaitanya.kulkarni@wdc.com>
 <20190519184553.GC10876@minwooim-desktop>
 <20190520002805epcms2p747debe2606f1a42a2b27a6d665f5612d@epcms2p7>
 <CGME20190520002113epcas4p345b92c6d82619b92478af81e81392266@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_185411_107015_007511C6 
X-CRM114-Status: GOOD (  25.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
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

> Before we add your patch-series we need to make all the returns
> consistent which is not present in the format() and create_ns() for nvme
> error status. Ofcourse eventually all the fd leaks needs to be fixed.
> This patch makes it sure the leaks for the only nvme error code are
> consistent and on the top of that your series fits well.
> 
> Without this we need to add two return calls in the create_ns ()
> http://lists.infradead.org/pipermail/linux-nvme/2019-May/024307.html :-
> 
> static int attach_ns(int argc, char **argv, struct command *cmd, struct
> plugin *plugin)
> @@ -1216,7 +1210,7 @@ static int create_ns(int argc, char **argv, struct
> command *cmd, struct plugin *
>   				fprintf(stderr, "identify failed\n");
>   				show_nvme_status(err);
>   			}
> -			return err;
> +			return nvme_status_to_errno(err, false);
>   		}
>   		for (i = 0; i < 16; ++i) {
>   			if ((1 << ns.lbaf[i].ds) == cfg.bs && ns.lbaf[i].ms == 0)
> {
> @@ -1246,8 +1240,7 @@ static int create_ns(int argc, char **argv, struct
> command *cmd, struct plugin *
>   		perror("create namespace");
> 
>   	close(fd);
> -
> -	return err;
> +	return nvme_status_to_errno(err, false);
>   }
> 
> It should be consistent with all the over functions with one return.
> 
> This what I'm trying to avoid (by ignoring other leaks for now), can you
> please explain why it is not a good idea to avoid this ?

I never thought it was not a good idea.  I just told you that it's just a
duplicated patch with on-going PR in the Github.

If we are returning the nvme_status_to_errno() in that other patch that
I have posted twice, is it that critical factor which blocks the patchsets to
be merged?

I don't know what exactly the issues are between "first merge patch serias
and code-cleanup there",  and "first merge this fix and rebase the patch series".
When I was preparing the patch series about errno, I was also hate that
codes you have posted above, but I need to make it focused first to make
people review this series first even there are two times calling like above.

If you really want to make it consistent, then why don't we just title it like
"Do not return in case of errors in the middle"

If you really want to close fd to fix the leak issue, then I think it needs to 
cover more than that.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
