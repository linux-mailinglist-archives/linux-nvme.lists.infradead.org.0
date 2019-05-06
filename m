Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5817D1563A
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 00:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1yiY9UC/qo8iz3oR4VvecUqKvq0M7mGRpyVtOWfMKb0=; b=nCiBUDb/VEqP/H
	qtW/ClMhflKvkNJVUApLoVJ3yFX9UzuXooYdNrinnafojZ2l7wsBiTdeRSfz/Dp1rPMnsX1LfpaSF
	2cCKksnX3w6JuRorMkkSpKQkYICuki3kowGVgcXZZmKuJ7HG1aJJR3h/9c3nrMGY4KxlC2xEGbrfA
	tZOHE+wB35reXIz1qMaCef46oapConHmKXTVQ/ONZSzYY5iyI3Gm/fsBc24V+C6zjHdXvfiIdGj0v
	n86L6K6amatyYYgT+vyLmtJmGZxYhHHAf2Umjc8TpXusvhIz4DWtTcwmCMecFwQDNTgJko24kPkkZ
	Va6TcDXukkrLbhAJBAFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmXb-0005Zj-TQ; Mon, 06 May 2019 22:56:59 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmXV-0005ZI-IZ
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 22:56:55 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190506225648epoutp02c10535715953799c3eefef849b406ea2~cOg9hzhON2604226042epoutp02g
 for <linux-nvme@lists.infradead.org>; Mon,  6 May 2019 22:56:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190506225648epoutp02c10535715953799c3eefef849b406ea2~cOg9hzhON2604226042epoutp02g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1557183408;
 bh=54KiS1ZZ+YHK/t8PzvOanywVcQ+WLKvj61GXY0gNSLQ=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=KpzG3XUfd7fzHhH2bVe5IZmfuwNT22WqBQcUwLB6oSanGCO2D27MKYlnBWVKTWEHp
 2d8hLmmMZar7jhMBShebU+6wQ5xln+scsc1ICBJRfvhAEyUx8lUop3X3cx63y2Ci34
 gjRq1hCF7eBAEoOKErq+EbdobBe0teAw2c8NQpu8=
Received: from epsmges2p4.samsung.com (unknown [182.195.40.181]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190506225646epcas2p2decf20f38f7a373397a647d27f5ded01~cOg62CGDk2807828078epcas2p2Q;
 Mon,  6 May 2019 22:56:46 +0000 (GMT)
X-AuditID: b6c32a48-689ff7000000106f-9e-5cd0bbad9335
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 B2.D5.04207.DABB0DC5; Tue,  7 May 2019 07:56:45 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH V2 2/2] nvme-trace: Add support to trace fabrics command
From: Minwoo Im <minwoo.im@samsung.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <SN6PR04MB4527A10184AEF3DDCC23CB0886300@SN6PR04MB4527.namprd04.prod.outlook.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190506225645epcms2p6b5efa570eade06b215b78418a0fbfdcc@epcms2p6>
Date: Tue, 07 May 2019 07:56:45 +0900
X-CMS-MailID: 20190506225645epcms2p6b5efa570eade06b215b78418a0fbfdcc
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAJsWRmVeSWpSXmKPExsWy7bCmhe7a3RdiDH5PU7L4v+cYm8Ws269Z
 LFauPspksXvhRyaLe0e/MFnMX/aU3eJXJ7fFs9MHmC3WvX7P4sDpMev+WTaPic3v2D12zrrL
 7nH+3kYWj8V7XjJ5bF5S77H7ZgObR9+WVYwe7Qe6mQI4o3JsMlITU1KLFFLzkvNTMvPSbZW8
 g+Od403NDAx1DS0tzJUU8hJzU22VXHwCdN0yc4BuVFIoS8wpBQoFJBYXK+nb2RTll5akKmTk
 F5fYKqUWpOQUGBoW6BUn5haX5qXrJefnWhkaGBiZAlUm5GRs+nyeveCDZMX2bUfZGhh3inQx
 cnJICJhIfH9wkLGLkYtDSGAHo8TURU/Yuhg5OHgFBCX+7hAGqREW8JFYMespC0hYSEBe4scr
 A4iwpsS73WdYQWw2AXWJhqmvWEDGiAjMZ5T4M6mFFcRhFrjMKLH6zzNWiGW8EjPaQQaB2NIS
 25dvZQSxOQViJVb9aYCqEZW4ufotO4z9/th8RghbRKL13llmCFtQ4sHP3YwgB0kISEjce2cH
 YdZLbFlhAbJWQqCFUeLGm7VQrfoSjc8/gq3lFfCVWHpuPhuIzSKgKnGhZynUKheJjo+XwGxm
 oB+3v53DDDKTGejJ9bv0IcYrSxy5xQJRwSfRcfgvO8xTO+Y9YYKwlSU+HjoEdaSkxPJLr9kg
 bA+Jq/t6wB4UEuhiknj0S2cCo8IsRDjPQrJ3FsLeBYzMqxjFUguKc9NTi40KTJCjdhMjOLVq
 eexgPHDO5xCjAAejEg9vh/WFGCHWxLLiytxDjBIczEoivInPzsUI8aYkVlalFuXHF5XmpBYf
 YjQFen8is5Rocj4w7eeVxBuaGpmZGViaWpiaGVkoifM+lJ4bLSSQnliSmp2aWpBaBNPHxMEp
 1cCoev29pqevrxYv2xPnJp2X1fH/02dZro0KZ3+7zij0Zk5R4MGC7f4zPrbGhba2TY7+uSa6
 x/4T49rth9mSLrSwvbB5bXdnnf6aP/1vt5wvs0nieeZsFLTm9KTCiRb9BRUKomEyj9a3Tpb5
 v/Lp2ePBrK6L1U9NdVgXl3dl3TXH9cdWSOwpXxSvxFKckWioxVxUnAgAAaesYMMDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190506223810epcas4p224242aa97518322bcbe2aa11d39d84a3
References: <SN6PR04MB4527A10184AEF3DDCC23CB0886300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <20190506194644.11109-1-minwoo.im.dev@gmail.com>
 <20190506194644.11109-3-minwoo.im.dev@gmail.com>
 <CGME20190506223810epcas4p224242aa97518322bcbe2aa11d39d84a3@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_155654_134633_7AFC2C09 
X-CRM114-Status: GOOD (  26.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> This look okay me with some minor comments, but it does not cover the
> target side tracing. In fact on the target side we have many components
> such as discovery/multipath/port/async events etc.

You're right, but this patch is just focused on nvme-host side command
tracing.  If host-side patch is accepted, then I think I can prepare the target
side tracing also with the experience of it.

What do you say?

> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index cd16d98d1f1a..eeda3ce9afaa 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -733,7 +733,12 @@ blk_status_t nvme_setup_cmd(struct nvme_ns
> *ns, struct request *req,
> >   	}
> >
> >   	cmd->common.command_id = req->tag;
> > -	trace_nvme_setup_cmd(req, cmd);
> > +
> > +	if (likely(!nvme_is_fabrics(cmd)))
> Do we really need likely here ? Isn't this branch should be guarded by
> trace config ? what if trace is not configured ?

The reason why I put likely here is that nvme_is_write() in linux/nvme.h
is doing the same kind of thing because, I think, it's going to be invoked
every simgle time in a performance critical path.

It's also be able to be built without trace configuration.  Can I ask why
do you concern the configuration of trace? (Actually I have build tested)

> > +		trace_nvme_setup_cmd(req, cmd);
> > +	else
> > +		trace_nvme_setup_fabrics_cmd(req, cmd);
> > +
> >   	return ret;
> >   }
> >   EXPORT_SYMBOL_GPL(nvme_setup_cmd);
> > diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
> > index 5f24ea7a28eb..0e027a49e3a1 100644
> > --- a/drivers/nvme/host/trace.c
> > +++ b/drivers/nvme/host/trace.c
> > @@ -135,6 +135,73 @@ const char *nvme_trace_parse_nvm_cmd(struct
> trace_seq *p,
> >   	}
> >   }
> >
> > +static const char *nvme_trace_fabrics_property_set(struct trace_seq *p,
> u8 *spc)
> > +{
> > +	const char *ret = trace_seq_buffer_ptr(p);
> > +	u8 attrib = spc[0];
> > +	u32 ofst = get_unaligned_le32(spc + 4);
> please use name "offset" here.

I have named these local variables to the same with names on spec.

> >
> > +TRACE_EVENT(nvme_setup_fabrics_cmd,
> > +	    TP_PROTO(struct request *req, struct nvme_command *cmd),
> > +	    TP_ARGS(req, cmd),
> > +	    TP_STRUCT__entry(
> > +		__field(int, ctrl_id)
> > +		__field(u16, cid)
> > +		__field(u8, fctype)
> > +		__array(u8, spc, 24)
> Can you please just declare a macro and replace 24 ? (I think we need to
> replace in the nvme_setup_cmd() also, please double check.

If we need to replace them to a macro, maybe it needs to be prepared with
a new commit to update them.  Anyway, I think size of 24 looks readable.
Do we really need to replace them with a macro ?

> > +	    ),
> > +	    TP_fast_assign(
> > +		__entry->ctrl_id = nvme_req(req)->ctrl->instance;
> > +		__entry->cid = cmd->fabrics.command_id;
> > +		__entry->fctype = cmd->fabrics.fctype;
> > +		memcpy(__entry->spc, &cmd->fabrics.ts,
> > +			sizeof(__entry->spc));
> > +	    ),
> > +	    TP_printk("nvme%d: cmdid=%u, cmd=(%s %s)",
> Do we need to differentiate between fabrics and local NVMe ctrl when
> reporting ?

I think we do.  The former one shows few fields that fabrics SQE does not
have.

Thank you, Chaitanya.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
