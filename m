Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 887749A2E8
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 00:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A0K/wbTQnF9wVL2lDUFZoNIEU/LN5pww88rlkS/ww6M=; b=ZBB9w2fkDQGSYC5oWt0O/8wIw
	gtNBAoqy50bCG3q9obqTmk6GOwHEfjM0sJYRc/r1ZwmMHHp3lvBs0GRe9zHjQRDIywjy+K5Om0APQ
	6BoA0i1/Lstfpf3WqKfCTwQO6CpIb3kJsfXzkTxxon6xG3nZDiCWCtN9vBmU2iIXrzFQoCsCt6tZx
	s+/XGFU3x0xg+dsg2yGlS7L3sn46UrPQXwf15W6nDeYbO6W0OSKf9hZ6aRaeq4Tz4keWKgszFgxnU
	EH3uEL6US+ALlgLfniV35g9+X9fJRXY9agq0crVNN0TPAsKOdAcbWK5LxdNTknLaf2h3aWU9PUer+
	DufMDuRTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0vaw-0004SI-LR; Thu, 22 Aug 2019 22:30:14 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0vaq-0004Rx-Vf
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 22:30:10 +0000
Received: by mail-oi1-f194.google.com with SMTP id n1so5604389oic.3
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 15:30:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rHFLmC/98XYhJnpAO0UO/SlpC4+bex3mTDbmVH54yjs=;
 b=K3lJdsQlt3iFsk1fS8SVdG14eTDrKxtYXsWgyj22eOQooRwb8Nb/KttinorbrbzEk7
 s34p3ILTpDjI9+5pkvFfQS9had3gYCEd9T5kv1U6PNsHKOPAg4zlCG1IrZT7HvqJTyDu
 KO6WaaqQLrtt9s1Znm8VIgYjCBCoBHa8Wgdi0nKkgS0Epm+I1qoF7xqlITPkTG4w20oE
 rj8V4n5JjrugB9QYyztQZu9X3uvUJIi+pyLAVUwOMrZ97trDsS46X9Wpt7L2oMMGKhsq
 QPTbDtcw0QLK9IMM2qQM3kc9Gf+lyOjbcvmAkmztW7VuEp2r53HL32zco6optCelb+yq
 G22g==
X-Gm-Message-State: APjAAAWIodfIiQCpv4o5500seMZCxpwEHSS67GeFi/BgRecnsK1kB6qU
 Wx9p/TZX6t/K1yEH4XoLYkOTuKFd
X-Google-Smtp-Source: APXvYqzA1/oIsmrlzb2013pVI9a0VcJ4jo8KMeE7AxzbZhBRpIlAihrEOswy601ru6eWXBEfGUEhXg==
X-Received: by 2002:aca:ea45:: with SMTP id i66mr1034138oih.17.1566513008054; 
 Thu, 22 Aug 2019 15:30:08 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id z17sm322601oth.48.2019.08.22.15.30.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 15:30:07 -0700 (PDT)
Subject: Re: [PATCH v3 4/4] nvme: fire discovery log page change events to
 userspace
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
References: <20190822222818.9845-1-sagi@grimberg.me>
 <20190822222818.9845-5-sagi@grimberg.me>
Message-ID: <00952f2f-f41b-bed0-0487-25447756f492@grimberg.me>
Date: Thu, 22 Aug 2019 15:30:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822222818.9845-5-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_153009_021060_E2C707C2 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> +static void nvme_disc_aen_uevent(struct nvme_ctrl *ctrl)
> +{
> +	struct nvmf_ctrl_options *opts = ctrl->opts;
> +	char *envp[16];
> +	int i, envloc = 0;
> +
> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_EVENT=discovery");
> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_CTRL_NAME=%s",
> +			dev_name(ctrl->device));
> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_TRTYPE=%s", opts->transport);

Bleh, left out in the rebase...

Will fix when applying...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
