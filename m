Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCAAED40
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 01:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=340uomUKLMUyIyP08jkkT6eJiNhk+eYRTJ70L2DWGyU=; b=WSqMHR/XhllugaCjw+Vn41rgO
	RBj5p8cuUC8GNY10trXJ7RAIK6dhDuO+j/Prvn3yrUrcrz6yI3kQjy3IPwzdPiMY3zJjnfCetf/Zx
	qf1Yhs1LLUg2fqfwc1fVyXM0NL5MDKlqxipj83CNK3CRHg5f3dGJLvGAF+CYqEmib7q42OKlWgYfK
	J9IRe0WiEEU2OBoq4H69aaGK5WcjBSNCEStoW2xMFYXqb6KV2OS65gfrOscmR36AqhyKMBzPDFxS5
	rKOHf48PUd60oFOnP0OX91JQUqEAKhwrZaOBNqLgNybZqHbr//GiIS7gnPofD47CiQw2mEr3iygAg
	JibYQNTLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFXm-0006WP-Il; Mon, 29 Apr 2019 23:18:42 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFXi-0006W1-Lg
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 23:18:39 +0000
Received: by mail-ot1-f66.google.com with SMTP id t20so10278344otl.5
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 16:18:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cM4wi4xeJaVRsLlJkX1jrJ83u8RaVAwPLk1FAXYl/Ws=;
 b=MyrrlpCN05pOvHQZ6YtVE9NkxBAdpcqMZ81bANjVkAIHnfJxerqTlLS/Oq1fqwIO0P
 4p/DtMpMEZpw0MAkU6RQMyqUqZOzHOmLn+J0YKC5iPnZ+KkMu2OI8c8dfpHV4IwXqagL
 iMJp++YI7I3X7bCVa5B3MGybdhyO8VCBHwFS1WNHNUdbdqOIJefcbXngap7cfc5uEd1w
 WMOkuCmDlp5ByJ17lqBRQunsgp5rZ6iA6tmSH2hCcVI2nMAWI3lYaPgF7OJqnBiBkZ1m
 AEqAsYcvvXXyp5O37oqGEJiPcbXQaebRMFcHgrlHc5FTVoMzLL4ZJfPshJkw5khyznBN
 nivQ==
X-Gm-Message-State: APjAAAX+JJvntWsUO3QE/9eB908H/Quj8PKrK2gWlokDxE7ic8sTYQvj
 4SXE2JT60NKWIErPKKRm1sA=
X-Google-Smtp-Source: APXvYqwZjRtWJZqK6u5yn7gxFP00aE7pzRbFW81EamBi1I3Nn4sjMnF8Qt7ltMu3n9GK11MFfyraFQ==
X-Received: by 2002:a9d:6a54:: with SMTP id h20mr7367385otn.334.1556579917080; 
 Mon, 29 Apr 2019 16:18:37 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id m206sm14765785oif.50.2019.04.29.16.18.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 16:18:36 -0700 (PDT)
Subject: Re: [PATCH V2 2/3] nvme: improve logging
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
 <20190429032442.5923-3-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <dfc245f5-e311-9b87-d308-dea143592ebd@grimberg.me>
Date: Mon, 29 Apr 2019 16:18:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429032442.5923-3-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_161838_706040_EE9F6C77 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: hare@suse.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> -	if (changed)
> +	if (changed) {
>   		ctrl->state = new_state;
> +		dev_info(ctrl->device, "state change from (%s -> %s)\n",
> +				nvme_get_ctrl_state_name(new_state),
> +					nvme_get_ctrl_state_name(ctrl->state));

dev_info is too chatty... dev_dbg please...

> @@ -2960,21 +2978,8 @@ static ssize_t nvme_sysfs_show_state(struct device *dev,
>   				     char *buf)
>   {
>   	struct nvme_ctrl *ctrl = dev_get_drvdata(dev);
> -	static const char *const state_name[] = {
> -		[NVME_CTRL_NEW]		= "new",
> -		[NVME_CTRL_LIVE]	= "live",
> -		[NVME_CTRL_ADMIN_ONLY]	= "only-admin",
> -		[NVME_CTRL_RESETTING]	= "resetting",
> -		[NVME_CTRL_CONNECTING]	= "connecting",
> -		[NVME_CTRL_DELETING]	= "deleting",
> -		[NVME_CTRL_DEAD]	= "dead",
> -	};

Patch #1 should erase this table here.

> -
> -	if ((unsigned)ctrl->state < ARRAY_SIZE(state_name) &&
> -	    state_name[ctrl->state])
> -		return sprintf(buf, "%s\n", state_name[ctrl->state]);
> -
> -	return sprintf(buf, "unknown state\n");
> +
> +	return sprintf(buf, "%s\n", nvme_get_ctrl_state_name(ctrl->state));
>   }
>   
>   static DEVICE_ATTR(state, S_IRUGO, nvme_sysfs_show_state, NULL);
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
