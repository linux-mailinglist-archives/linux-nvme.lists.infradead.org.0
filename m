Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38856742A
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 19:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RDazAZvNt2qp/aD941aT7015rikdlapkjQ5WPYAY5gs=; b=HCGpXy4F4yNmkzVRw9iyW6kaY
	NYKHXMCp5/INRSB4cvJp6VAjIqrIgt64DIGqNCi5G4CN9K5dVmoUJ/0bf7KuADxMCJ9XozX0nNsic
	miou/YhJcYgFhA3LoQp4KG5QJuk9UdwXa1COrOX+yDTq8iuSTUe+3EUhOLRpCQGS037WA8jntOnBR
	VMTd2NqmDMnt1Qd6Hjqn2uClzbHvrEctXTfocTGFdBS4vs7ijM9CoPoAYBidPsFo3+qJZjpXAkPU/
	hIBn1+nBK9e20kdI32LD39K73PLpBnoAoVPxJTz/DGrIpBbQgV+QVZrpV6bqnqQ8wPf6Dol9WfgEF
	Ye5L1khXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlzJO-0006ub-VZ; Fri, 12 Jul 2019 17:26:23 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlzJG-0006uB-Qm
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 17:26:16 +0000
Received: by mail-pg1-f193.google.com with SMTP id i18so4811578pgl.11
 for <linux-nvme@lists.infradead.org>; Fri, 12 Jul 2019 10:26:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NPIozNed6V7QZjTNnA8mdsY7CANDRgJEpog1bzO8tBk=;
 b=jRfK6aU4g7XfLuZdgTKe6cmv/KhbeiLeuYd7VXvn1JrOiEhwKbUXkJstVVnzFaoUIN
 qu1ruQjZneWKVOVaf6NVk/L7YmAsXQhxWbdgkZ9xvPaJrUgi/57S4sb9iqbDTafPcPng
 eZd/fAIYDYu+M8ixY5rUWvXe8G/BpxTVQzUam0dLM/A9nSCHUzzcRY9k3LQigMK9AVqa
 g6IVTIUFZl0FZAnjg8PoNhHHAaX8n8VrY9WCuJ0NHp9CA65cHL5XRKfd4vCEwcjmEYgb
 n5FT6W19MG6x0QcS5HvDHozHOVcolcWFJaQMzb+VJlyD0H1C93tkQ50qTlrcIcPmN8Xt
 LPMw==
X-Gm-Message-State: APjAAAX+wzIzQ9W/p3Fqe7Ta0O4ZVktw14z7swajESJ6c9IJzHS7hbr+
 e5sodwgyGE80uoAMuxATa+3ztC08
X-Google-Smtp-Source: APXvYqzLKUY9V5VwDDiXIflF2eBET4XGIvMOX4F5VHEzQvByQBrpVpeTgUqpVVxnuScA3tAOia/jJQ==
X-Received: by 2002:a63:2b0c:: with SMTP id r12mr12111598pgr.206.1562952373870; 
 Fri, 12 Jul 2019 10:26:13 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id r75sm3713091pfc.18.2019.07.12.10.26.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 10:26:12 -0700 (PDT)
Subject: Re: [PATCH rfc v2 10/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-11-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a97cd8d1-b36f-828f-12b7-975d3fe219ca@grimberg.me>
Date: Fri, 12 Jul 2019 10:26:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-11-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_102614_867437_22756EBD 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> diff --git a/nvmf-autoconnect/nvmf-connect@.service b/nvmf-autoconnect/nvmf-connect@.service
> new file mode 100644
> index 0000000..7d9f856
> --- /dev/null
> +++ b/nvmf-autoconnect/nvmf-connect@.service
> @@ -0,0 +1,14 @@
> +#
> +# Unit file used by 70-nvmf-autoconnect.rules.
> +#
> +
> +[Unit]
> +Description=NVMf auto-connect scan upon nvme discovery controller Events
> +After=syslog.target
> +PartOf=nvmf-connect.target
> +Requires=nvmf-connect.target
> +
> +[Service]
> +Type=simple
> +Environment="CONNECT_ARGS=%i"
> +ExecStart=/bin/sh -c "/usr/sbin/nvme connect-all `/usr/bin/echo -e $CONNECT_ARGS`"

Lets lose the nvme full path, sh allows us to have that (can be in
/usr/local/sbin or somewhere else). and not /bin/echo?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
