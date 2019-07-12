Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85C766310
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4VUixruuNvQrgYua9B6lYKByrXZ6N5NqGtj/D8p5Fj0=; b=YWg6toMc6eGigweETkydOtdb/
	PgkcgvKwjjl31z3/L2OHcBNwYeLEabyqyHSMG6rFSC+S8CYiaAjtg0EevWIBApTbfvew1lDlP+1gC
	0CDCRMl8b5GbLXwtHkQ1z9lR8eGIi+dZZVPBvYzi5k1CBUpxaMxtGaoYgrjhfGlNjbKiuJ6Tr0356
	awpAzBQ/dRkxbwZmDOhezsWmAVZRZzPhjHTDyeo3dK3vQ7sQ+vRXtXb81o5fMuRMzGTgaFm9gqe6S
	YWhtFGdpJsGVfSctY7OZZs59MSm5fdBkcc2jTYF5e2MjhSwLl9W+/R4ejw1tyb/iKdZ9+KPKMKhFR
	plUzpFeGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljl3-0002GA-40; Fri, 12 Jul 2019 00:49:53 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljkt-0002Fb-95
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:49:44 +0000
Received: by mail-ot1-f66.google.com with SMTP id h59so3888151otb.10
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:49:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kHaZOlljjnceZn+WEHEYki3JSijqZeodsoIggYeAgZs=;
 b=hDdC6++x9ejV5PGkQZ757zWGqJAfQQ4VhoYjoKHx5U6S1m1sPKgREKq4Mrlf1l9hFu
 voF0HiVAY6LY2/0NOzcRfza3KGulKDLHluAJtV5ngPyS+VL3e3KAiWar3ljlCmOBBu8C
 kpDsBw8m5rWQMsMBq6ixcMFKKcEn7TgNixHk+CsSuDoP3Pp1FLT0PXxK6jemUmPjiGbh
 pw0NRdr/kdonk/y1hFUufJ22jJnYARWxmqbRwlH1H7EBi+LW4wu4Pa/FhfH1fj77br7V
 bnrhSM3Mdgl7lUWIl042ePefYzT9q+BE2+K8qpohhHLjG30LfgbRyifOHLkjJzvaYQQ2
 GZMw==
X-Gm-Message-State: APjAAAXa6/YpXc3gRw71R9x9vCmRBzGllilP3aomyBaM0QPyv1OZLXd2
 EoLXXStzbdZ706n6nqXxt7I=
X-Google-Smtp-Source: APXvYqxsdTlGKuiQWFl+bHZ/jVVfkLhcCCPKvNWAMQqQ+6EV5ak1Ljbk0PB84/5XNyPnXExr8qsPWw==
X-Received: by 2002:a05:6830:144e:: with SMTP id
 w14mr5786613otp.10.1562892581479; 
 Thu, 11 Jul 2019 17:49:41 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id b21sm2735862otp.80.2019.07.11.17.49.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 17:49:41 -0700 (PDT)
Subject: Re: [PATCH rfc v2 06/10] nvme-cli: Add routine to compare
 ctrl_list_item to connect args
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-7-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f4aa9904-b362-0908-ae20-d97715d9ad2d@grimberg.me>
Date: Thu, 11 Jul 2019 17:49:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-7-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_174943_321940_5297A335 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Hannes Reinecke <hare@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> In preparation for searching controllers to match with connect args:
> 
> Create a new routine that receives a structure containing connect
> arguments and a device name. The routine will build and fill in a
> ctrl_list_item for the device and compare its attributes with the
> connect arguments. The routine returns true/false on whether they
> match.
> 
> Routine is defined as a global as a subsequent patch will use it
> from the fabrics routines.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> CC: Sagi Grimberg <sagi@grimberg.me>
> CC: Hannes Reinecke <hare@suse.com>
> ---
>   nvme.c | 40 ++++++++++++++++++++++++++++++++++++++++
>   nvme.h |  9 +++++++++
>   2 files changed, 49 insertions(+)
> 
> diff --git a/nvme.c b/nvme.c
> index 66ba2fc..ef3c61c 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -2010,6 +2010,46 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
>   	return nvme_status_to_errno(ret, false);
>   }
>   
> +static char *nvme_ctrl_dir = "/sys/class/nvme/";

SYS_NVME?


Other than that, looks good

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
