Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0461825BB
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 21:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1t8+oC6LIiPfaW/MCBqzBHQ5MtZdznln8Qh3+uhZClc=; b=qLVESDvKUaab7YKzEAn0lF+dJ
	XLfmR8jmdZt5tWGW/BYL9KHa6UhtY4ZHoCpI+UMqmQeN2xc2TPyWcxXOR+9J+ZBZwBGO3nxqZ+U92
	mhY+wkZcskjm+fPbrFw1/ar+XKIXOy1sKpVpoGenMZgl+4/47xJg/S/wfoQmYlfg1z94NNZunDEdY
	a7fLRATn0ln9MW8/E2VtZpSsjsk0yhL9Gqwn+nvfAl520Bfi3hsMwzpk0nT/idf+TW1Yyl/29YVzs
	e68pYbmDLWAAXiEWrNheqDDxwu2FKpgA15K78yI7Qbo0NAD9/UmYK7JJfdq+p0XGkJCOwCopS35S1
	d5o8DznRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiya-00044Z-Qb; Mon, 05 Aug 2019 19:49:00 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiyW-00044E-6m
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 19:48:57 +0000
Received: by mail-ot1-f66.google.com with SMTP id z23so58396214ote.13
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 12:48:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=i6SC22E9AAu3O3Wy+b3XDD3IifnvW7rJrDEXHJObsR4=;
 b=gFUVDiDCsJYZ9YRK/W3+lCK4rWZeYLqRPyfJEJ4Q6Um8smK6zehv9TdCHYtbqDIyVf
 VI/k9K0lczgz1SAtA5Vb5dGma9QHOj6FFzGE3GdmnqEkDRgx5GMDNabb3lqxnF/cCr9L
 9pUAv1e2UF45llXyjHdkRDMwivGxPDzLU8Gl7e2oXJJ3hjDM+11eDIDzuxK0ADCJkyzT
 4zbvWN/2V9opL5vQ3qHgvCGBcGn/e8w2f3e0tJrxSgYgyya+sL7qofcO1xsROcZ89tBL
 fsrvN6LfAw48x5z0cPlkEuWSb1zk/gMmEjWo/FIabV8voGjbtTBjPtTf8GnNx5Qi5Bqf
 NTjA==
X-Gm-Message-State: APjAAAWJroLaNPo6fdv2SbLNdH07ShVpb8zsQ/0g3XlV9Yvk7sxDx6Jk
 n1FC3QN5DW1xoFytGSnNYrykzJkn
X-Google-Smtp-Source: APXvYqyWtpXxp4kV3g1hxySbXsM8Mzi/G21ftAUIQm4fmMPg8MYsBENPWUco0Z1kkqZy1mla3d957w==
X-Received: by 2002:a9d:3e4e:: with SMTP id
 h14mr111874585otg.182.1565034534863; 
 Mon, 05 Aug 2019 12:48:54 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id f84sm28736812oig.43.2019.08.05.12.48.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 12:48:54 -0700 (PDT)
Subject: Re: Fwd: [PATCH rfc v2 0/6] nvme controller reset and namespace scan
 work race conditions
To: James Smart <jsmart2021@gmail.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <e04be8bf-20cb-db7d-6046-74d8ec6fa485@broadcom.com>
 <e80a1e7a-ab7d-fc89-0f62-2c88b7c75b85@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e76173c0-b398-5e57-7fe6-e943ecd7b625@grimberg.me>
Date: Mon, 5 Aug 2019 12:48:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e80a1e7a-ab7d-fc89-0f62-2c88b7c75b85@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_124856_251982_499F1A62 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> I have two complaints:
> =

> - FC is eliminated from this fix, as FC doesn't use =

> nvme_cancel_request() to terminate I/O's on resets/error recovery.

Becuase I didn't find nvme_cancel_request in fc I assumed that it
doesn't see the issue, but thanks for the extra hunk that is needed!

> - With this change, any error set by a transport must be either =

> NVME_SC_SUCCESS or NVME_SC_HOST_PATH_ERROR or it potentially misses the =

> fix. I'm not sure that I like that, although any error from the =

> transport is essentially a path error.=A0 Do we lose anything by the loss =

> of error clarity ?=A0=A0 Looking at what's present, we don't have much =

> diversity when an error is set, so I guess it's ok.

The main objective is to avoid the issue if we have a transport related
error which means we cannot communicate the the device (hence we set
BLK_STS_TRANSPORT). If we have another transport related error we should
assign that as well to this path.

> Minimally, include the following fix for FC as well:
> =

> =

> Signed-off-by: James Smart <james.smart@broadcom.com>
> ---
>  =A0fc.c.new |=A0=A0 35 +++++++++++++++++++++++++++++------
>  =A01 file changed, 29 insertions(+), 6 deletions(-)
> =

> --- fc.c.old=A0=A0=A0 2019-08-05 10:55:51.318627945 -0700
> +++ fc.c.new=A0=A0=A0 2019-08-05 11:01:46.278380191 -0700
> @@ -1608,9 +1608,13 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sizeof(op->rsp_iu), DMA=
_FROM_DEVICE);
> =

>  =A0=A0=A0=A0 if (opstate =3D=3D FCPOP_STATE_ABORTED)
> -=A0=A0=A0=A0=A0=A0=A0 status =3D cpu_to_le16(NVME_SC_ABORT_REQ << 1);
> -=A0=A0=A0 else if (freq->status)
> -=A0=A0=A0=A0=A0=A0=A0 status =3D cpu_to_le16(NVME_SC_INTERNAL << 1);
> +=A0=A0=A0=A0=A0=A0=A0 status =3D cpu_to_le16(NVME_SC_HOST_PATH_ERROR << =
1);
> +=A0=A0=A0 else if (freq->status) {
> +=A0=A0=A0=A0=A0=A0=A0 status =3D cpu_to_le16(NVME_SC_HOST_PATH_ERROR << =
1);
> +=A0=A0=A0=A0=A0=A0=A0 dev_info(ctrl->ctrl.device,
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "NVME-FC{%d}: io failed due to lldd er=
ror %d\n",
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ctrl->cnum, freq->status);
> +=A0=A0=A0 }
> =

>  =A0=A0=A0=A0 /*
>  =A0=A0=A0=A0=A0 * For the linux implementation, if we have an unsuccesful
> @@ -1638,7 +1642,12 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0 */
>  =A0=A0=A0=A0=A0=A0=A0=A0 if (freq->transferred_length !=3D
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 be32_to_cpu(op->cmd_iu.data_len)) {
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 status =3D cpu_to_le16(NVME_SC_INTERNA=
L << 1);
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 status =3D cpu_to_le16(NVME_SC_HOST_PA=
TH_ERROR << 1);
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_info(ctrl->ctrl.device,
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "NVME-FC{%d}: io failed du=
e to bad transfer "
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "length: %d vs expected %d=
\n",
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ctrl->cnum, freq->transfer=
red_length,
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 be32_to_cpu(op->cmd_iu.dat=
a_len));
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto done;
>  =A0=A0=A0=A0=A0=A0=A0=A0 }
>  =A0=A0=A0=A0=A0=A0=A0=A0 result.u64 =3D 0;
> @@ -1655,7 +1664,17 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 freq->trans=
ferred_length ||
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 op->rsp_iu.status_co=
de ||
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sqe->common.command_=
id !=3D cqe->command_id)) {
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 status =3D cpu_to_le16(NVME_SC_INTERNA=
L << 1);
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 status =3D cpu_to_le16(NVME_SC_HOST_PA=
TH_ERROR << 1);
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_info(ctrl->ctrl.device,
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "NVME-FC{%d}: io failed du=
e to bad NVMe_ERSP: "
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "iu len %d, xfr len %d vs =
%d, status code "
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "%d, cmdid %d vs %d\n",
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ctrl->cnum, be16_to_cpu(op=
->rsp_iu.iu_len),
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 be32_to_cpu(op->rsp_iu.xfr=
d_len),
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 freq->transferred_length,
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 op->rsp_iu.=
status_code,
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sqe->common.command_id,
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cqe->command_id);
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto done;
>  =A0=A0=A0=A0=A0=A0=A0=A0 }
>  =A0=A0=A0=A0=A0=A0=A0=A0 result =3D cqe->result;
> @@ -1663,7 +1682,11 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req
>  =A0=A0=A0=A0=A0=A0=A0=A0 break;
> =

>  =A0=A0=A0=A0 default:
> -=A0=A0=A0=A0=A0=A0=A0 status =3D cpu_to_le16(NVME_SC_INTERNAL << 1);
> +=A0=A0=A0=A0=A0=A0=A0 status =3D cpu_to_le16(NVME_SC_HOST_PATH_ERROR << =
1);
> +=A0=A0=A0=A0=A0=A0=A0 dev_info(ctrl->ctrl.device,
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "NVME-FC{%d}: io failed due to odd NVM=
e_xRSP iu "
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "len %d\n",
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ctrl->cnum, freq->rcv_rsplen);
>  =A0=A0=A0=A0=A0=A0=A0=A0 goto done;
>  =A0=A0=A0=A0 }
> =


I will, thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
