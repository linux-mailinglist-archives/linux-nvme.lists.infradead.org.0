Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC9A9B47F
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 18:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/dBAjxA9Em9Ed8DfwyBhur5cp6AMXsIrP/hNxSgnfzE=; b=oWXS944OwBa4UExJme/bmKpuo
	XIdH2hku0c6f6tYMsIEa1uymywEOTj+7xHedLD84kasj7BSrEjK1vhPB/kFsIFj3LeY0Zx+wGXIcr
	JDAjgA60JXerTu3s43Fz48r3w+vE9Zp29qXhzlRTdAqhjxH2KsjPGmsv9ot1/QlLzxFJ3KnrGKkdl
	JkhSTbK6pAlpB2jNZ5Wycm8YBL68kpcF6UonuHtx9Glxgo9W4cpQPmQXgbuN3pij4tmOlgQadkDBj
	C6VVonGa53fueXJwrZYJRykqs8m9aEhH6AGNPUEHlImE1qe933e4/Mu5TBIeYeQgVv4wrc2tkyuD/
	iZKZYnunQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1CWR-0000v2-7f; Fri, 23 Aug 2019 16:34:43 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1CWM-0000ug-LU
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 16:34:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id p3so6040510pgb.9
 for <linux-nvme@lists.infradead.org>; Fri, 23 Aug 2019 09:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=r1Pno9qpSrVlO6HgITssvCRaXNZtZYvUzi41HySu8bE=;
 b=RZpzd4jc6w63AdtBUijDeMRi1DEDgqt7zAAZknjTykTDed85xJFjlX/K+wOgfN6xBH
 rzPkNlHDCZtX6a5w0OBi3ChCwVHwr8h5Mju2OrcDcEIFyh31xXtEPwicTYf9S82uGwJt
 ZrgCJgzF8kS2XtVnkB3ZLmBiTeGlop+ABQ2KE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=r1Pno9qpSrVlO6HgITssvCRaXNZtZYvUzi41HySu8bE=;
 b=ARsxruxkdi/6iblIQPEJ5nh7PEzQJAFuhU36Ma0sX5/uv9fJ0exXHpQreOscGL3++v
 n2uNLrlsKudBmnoyUaLKu/MJZWHvSzeI9c6fewFkI8bXi+lIbU1aMH9y1D1wzbKgK3g1
 RxgLkvHp6pLiW1m9Npzi3C+ZQce1pERFLX3tgpJlc48jr5z6H4bRHz8mnnJKyavWVLQu
 03FDR1aGJjZ7rMgK6kSgVzOsiA3gbFcN6EAqrFGrCBab5oTmwy9WBqg/Zh/SAaS2WAPE
 TB9uWFtoIPh1fFN7YRG0An9qCm9id8TMSZQG7cUO5EecqFierUYwHElwISiiG4LOMXMt
 LT1Q==
X-Gm-Message-State: APjAAAVEa7S55ryVfY7Igw4Xhlfslb6/Dmkz+pWttsPprdD3NVavBFU2
 kZ5jJ5j0DNFxRSc1y4YKe2ZLcQ==
X-Google-Smtp-Source: APXvYqz3UMQ271WNwph+3mRuD443D9QzWA4BWrPDljovO68CD2ij9bc1f0sfnROoDhd8JFIMnesHzg==
X-Received: by 2002:a62:86cf:: with SMTP id x198mr6295808pfd.195.1566578077890; 
 Fri, 23 Aug 2019 09:34:37 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id y194sm4224061pfg.116.2019.08.23.09.34.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Aug 2019 09:34:37 -0700 (PDT)
Subject: Re: [PATCH 2/3] nvmf-autoconnect: fix absolute path for systemctl
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>
References: <20190822220937.8021-1-sagi@grimberg.me>
 <20190822220937.8021-2-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <ecd6c4e0-0424-0efa-c73b-bef433bbf7c0@broadcom.com>
Date: Fri, 23 Aug 2019 09:34:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822220937.8021-2-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_093438_706725_55748EF4 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 8/22/2019 3:09 PM, Sagi Grimberg wrote:
> Without the absolute path udev gets the error:
> failed to execute '/lib/udev/systemctl' 'systemctl --no-block start nvmf-connect@[...].service': No such file or directory
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules b/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules
> index 789a2c837e3f..c909fb036d54 100644
> --- a/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules
> +++ b/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules
> @@ -9,9 +9,9 @@
>   ACTION=="change", SUBSYSTEM=="nvme", ENV{NVME_EVENT}=="discovery",\
>     ENV{NVME_CTRL_NAME}=="*", ENV{NVME_TRTYPE}=="*", ENV{NVME_TRADDR}=="*", \
>     ENV{NVME_TRSVCID}=="*", ENV{NVME_HOST_TRADDR}=="*", \
> -  RUN+="systemctl --no-block start nvmf-connect@--device=$env{NVME_CTRL_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"
> +  RUN+="/bin/systemctl --no-block start nvmf-connect@--device=$env{NVME_CTRL_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"
>   
>   # nvme-fc transport generated events (old-style for compatibility)
>   ACTION=="change", SUBSYSTEM=="fc", ENV{FC_EVENT}=="nvmediscovery", \
>     ENV{NVMEFC_HOST_TRADDR}=="*",  ENV{NVMEFC_TRADDR}=="*", \
> -  RUN+="systemctl --no-block start nvmf-connect@--device=none\t--transport=fc\t--traddr=$env{NVMEFC_TRADDR}\t--trsvcid=none\t--host-traddr=$env{NVMEFC_HOST_TRADDR}.service"
> +  RUN+="/bin/systemctl --no-block start nvmf-connect@--device=none\t--transport=fc\t--traddr=$env{NVMEFC_TRADDR}\t--trsvcid=none\t--host-traddr=$env{NVMEFC_HOST_TRADDR}.service"

Sigh - hate working around all the distro variances. I came to the 
conclusion that's what the path environment attribute was supposed to solve.

Change is good.

--james

Reviewed-by: James Smart <james.smart@broadcom.com>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
