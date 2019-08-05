Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5DF824D4
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 20:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CaWxanzWEAj9wpxCVr+DNLDlBhCWkJM4W8e770dRfMk=; b=oOj3HPfLcbLwu8M14Q41hJF6X
	gcLnJ4aLquPBfZVDBvpES6kDRCsS5hV5/7+mlc0lwxJSXrqRvpp8GACtqSsjCsL9DsrmaqqIdAWDW
	0AXASPbVEBSJrdRw7lRpk46AtkL8yfDMtbeetnwqXuHkpobISXHly/9INFnUhl6ytR3hB5TdTXbRt
	IAzbneNdVuAdC0feqG63AwIU0C/odiIqub/ZDfeB9kaViBvZwlivBp8XCfEadsYBxQWGh41rcMCSc
	DpM1BrbyJCWQJB6fFFzdXPI0fj+HjgOj+FgQs80QF+ELsBOokJ+9NjPsde3Y7RCuAQHrCxGlhb5Jd
	opolGlXfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhfR-0005X8-TG; Mon, 05 Aug 2019 18:25:09 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhfJ-00058w-0N
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 18:25:02 +0000
Received: by mail-ot1-f66.google.com with SMTP id j19so9563759otq.2
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 11:24:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D1vuFC+exol4EyyaQY7tDUKqDXDCCeilU2p7ZyudfOM=;
 b=KawhaVseFtaeiyZMZ/bqWOl10VbyVEH847ZRK3CKaMY9ChGToy0fy3XHKZshE3BAds
 PXH1l9z7rzqXsDIjbHN5MJQMpRey0++Rg2Z93rtL6lOW8AjTvnfwPcd3jaxNOjDhMe65
 DuGRRFayaVdNNrl1EWg69npYud5iXFgxcDPmIDI0daF0tgcJMzXjHwjP2lIsbxaZzVKA
 yB5txWL4eYXrXrUCt+N/xT7cTSgyXcZdyIxLETJZRYPlVlfAFQboSXwS8wk1zhMFGk/i
 hYLgsPXz1QJeKmt8T9OPEesxw7Cl76hvtJlJnEyT3vqvypG3GNLtbzuyZxCtDEXLZuNW
 pphA==
X-Gm-Message-State: APjAAAVeQDtl9GaNM3A4CCWIBX0YTmw2Tg2Bfiq+Xs/UNvr+DjI+b3Dl
 XWig6EMssQ/wRVfZugVMWnc=
X-Google-Smtp-Source: APXvYqyjx0A/G2qAbfroamAnzTOURS0bws6F2dqNn7EYiP1+yFSzzIsliLKqyTMU7gxn5e3akXwG3A==
X-Received: by 2002:a9d:76d3:: with SMTP id p19mr12083433otl.18.1565029497495; 
 Mon, 05 Aug 2019 11:24:57 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id s82sm30077318oie.40.2019.08.05.11.24.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 11:24:56 -0700 (PDT)
Subject: Re: [PATCH] nvmet: fix data units read and written counters in SMART
 log
To: Tom Wu <tomwu@mellanox.com>, Linux-nvme <linux-nvme@lists.infradead.org>, 
 keith.busch@intel.com, hch@lst.de
References: <1564970259-12279-1-git-send-email-tomwu@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8cbab0aa-51c7-b33a-46a3-5a85debc023c@grimberg.me>
Date: Mon, 5 Aug 2019 11:24:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564970259-12279-1-git-send-email-tomwu@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_112501_051543_42C08302 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
> index 9f72d51..acbadbe 100644
> --- a/drivers/nvme/target/admin-cmd.c
> +++ b/drivers/nvme/target/admin-cmd.c
> @@ -85,6 +85,9 @@ static u16 nvmet_get_smart_log_nsid(struct nvmet_req *req,
>   	host_writes = part_stat_read(ns->bdev->bd_part, ios[WRITE]);
>   	data_units_written = part_stat_read(ns->bdev->bd_part, sectors[WRITE]);
>   
> +	data_units_read = DIV_ROUND_UP(data_units_read, 1000);
> +	data_units_written = DIV_ROUND_UP(data_units_written, 1000);
> +

How about either modifying the actual retrieval or move the fixups right 
next to the initial setting...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
