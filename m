Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBEACC6D5
	for <lists+linux-nvme@lfdr.de>; Sat,  5 Oct 2019 02:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dTjxl3+JdBWCL9DoMGg6FSc0SWD9UxPpEzhGTxGGXrs=; b=GXDIEJgMNuMaxtG8E8FZHWK4Y
	zNMhxGjnQfX/7XpzhliGpa/xnxQalPDhgiUfkE8qTpnqmyKiwALd7GdijuYGi43n/vAzAuc+vnzzj
	0goYPKEDpe5b6YVclKGceZ4PjlKLhhgJcW8Y7Cp6wLpb/FZAslOd1vDguFN2ietz5hfR1a8k1+GJc
	ph9hezmKRln35zFPKAQ1hhOVqyb3U+53HjMJuRwqF7Xb79W8h/vBSJVtZCSxr5oYNeXmve2jDDnWX
	YK7gsgKGeMLlW4r6bOj33n0zIojyo4RS1tvBq9NFBFbx+qP2TnG/uJHeKE3okvlSeQcJWUyCtxE2h
	m0vw2udwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGXdo-0005a9-Fs; Sat, 05 Oct 2019 00:09:44 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGXdk-0005Zf-F3
 for linux-nvme@lists.infradead.org; Sat, 05 Oct 2019 00:09:41 +0000
Received: by mail-wm1-f66.google.com with SMTP id b24so7362486wmj.5
 for <linux-nvme@lists.infradead.org>; Fri, 04 Oct 2019 17:09:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fyjah8mPH54yCmdFmgmwylYbb2okONRXaMlwJYvo7Vk=;
 b=YvYGsbXkdMVRVCflaOp+YpsAuLfCJoVwIZ8VsUE12gDcfJZTdLwVAUF7v1UYBkbUnS
 GwaZAeEPCJ/diwtrXNYa+1t6YUB5RnIxr/EAmNEzqJMKQJsvkIxRo750ykBTC+beOoSW
 N8UOVrCCGk/QcaUzMk1OK9IBTQkNLLfRQRHl1ghrADeQaLW1ab0HFoWenTUqDITAMZhA
 YefWdlD0/2a6iKHpfKKN/qYYASdUChwvxjmayJhtMpI2za9Qo7I4wLIHW56ZrDFIjr5i
 9MuJPcgO0MTvkb8RUADejVFw4i7u+zRFmUIlDdl4zl+Ur8v/qaEGj3EZCtgaCuU+mEi7
 h2oQ==
X-Gm-Message-State: APjAAAWYw3WiSSp3nI+8i/5uVXWk8IayZDMpF/snk3JSW+rEp5HcUhOR
 CH3bR9P1yAc4DWqfRzQEzGD4z78x
X-Google-Smtp-Source: APXvYqwWbGMbzCiz3vhyk80yI0n1GPZQge3q1oyRkdGK7Pz+MYJVGQsuIFPbEpkpiwMAzrggLVjvUg==
X-Received: by 2002:a7b:c10c:: with SMTP id w12mr2032892wmi.26.1570234176541; 
 Fri, 04 Oct 2019 17:09:36 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t83sm12940691wmt.18.2019.10.04.17.09.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 17:09:35 -0700 (PDT)
Subject: Re: [PATCH] nvme: define struct for __nvme_submit_sync_cmd()
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20191001231346.18518-1-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0adce3dc-63ad-5302-4486-d6d840b42ee0@grimberg.me>
Date: Fri, 4 Oct 2019 17:09:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001231346.18518-1-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_170940_502814_60DFE757 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Over the period of time __nvme_submit_sync_cmd() function has grown to
> accept large number of paratements. The function __nvme_submit_sync_cmd()
> now takes 10 parameters. This patch consolidates all the parameters into
> one defined structure.
> 
> This makes calls to the same function easy to read and improves overall
> code readability.

Personally I'm not a big fan... But I'm not going to reject it either...

What do others think?

[...]

> @@ -366,10 +398,25 @@ static void nvmf_log_connect_error(struct nvme_ctrl *ctrl,
>    */
>   int nvmf_connect_admin_queue(struct nvme_ctrl *ctrl)
>   {
> +	struct nvmf_connect_data *data = kzalloc(sizeof(*data), GFP_KERNEL);

Please don't. I'm allergic to allocation on declaration.
Just set d.buffer after the initializer.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
