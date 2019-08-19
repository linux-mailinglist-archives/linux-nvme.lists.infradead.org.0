Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0878F95002
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 23:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YPqDtcwi4Ve+W4OAnNCqptyY94mG1adOHgI84h685e4=; b=hYMQUR977vS1qkJZzMnKZgoBP
	LNSaHgXq/toJ2I7ACqy243HLmVF/WyCR5Qqv8PAfG1qq06F9D3sLSl6yD3B68KGoSPzUuZy0naEwX
	kx9mNvxM6nC9rke3OsRQXjRt7M8/7G/8o1ih2neyCIzb1T/6VZmStcqU2UP96qMx6fnd+ubsXDI5C
	36WrYjGOdphtVDcNcq4+TfuHSqphpMBIp6NZP9MZOix+DpP3UBv9VK4wUePKfot/RH2Ln0Ngh7tnd
	YP+fhgg44tRx/ecy9Lktr8tUf3ZOXOgWBCXIjjmEZY1XyHO+nmifUzNMEsKS66VxQSQ1La9t9KZzZ
	L9bWYb+uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzpQd-0005Rg-Gx; Mon, 19 Aug 2019 21:43:03 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzpQU-0005RJ-BI
 for Linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 21:42:55 +0000
Received: by mail-oi1-f182.google.com with SMTP id y8so2507474oih.10
 for <Linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 14:42:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wSGT0cJAqoqVdnUquvx7fDfW5eDBqYwnVOywcbTC9o4=;
 b=knWf2zBBiIYVvK6bscZV+ZGJQe+dZH4+uWCO2yaXvlP1qjX7rQo13RrLWuFKdsFsyZ
 50TEVptHCh4x3+DTfemqp69tUcLq091Z8PM9WVkKAhtj6isDjDfeYR/6OsY7AK5orwfJ
 l+1nD8UkGgWcOHOIZOjzlfwbrO9dJTpO4/lyE7R7V6SmmPDzFOiQk/PWMM/r4JaGDBj/
 pMYoMg0IKj9Wa+azA/M+h3YztsJIlIgSeUm03KS8+0CuNltqze7XJhpiaDHf4yO6dFSB
 4OfSDTNR29DGsnh7gGYV83EjEEMxgT1rsG9FZymjO6StQJ6sfLowIKf2+3YQE0A3HhDr
 Zw0g==
X-Gm-Message-State: APjAAAXnchtAtp50F3HW5w79hKv0jbVmPk152/f5x4pQhdRt9lSomWye
 786GK+8X1/RCcskiERZT9jHmCZg3
X-Google-Smtp-Source: APXvYqy7fnrhVQpeGzcT5DD/kumqLIqID0dW6F7YhKjE61MxfGT0A8nXCpXvZikaYMXRSZttj3OTiA==
X-Received: by 2002:a05:6808:4d0:: with SMTP id
 a16mr5210414oie.47.1566250972556; 
 Mon, 19 Aug 2019 14:42:52 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id b65sm4104171otc.40.2019.08.19.14.42.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 14:42:51 -0700 (PDT)
Subject: Re: newbie NVMe over TCP question
To: Alan Johnson <alanj@supermicro.com>,
 "Linux-nvme@lists.infradead.org" <Linux-nvme@lists.infradead.org>
References: <fd51256163b647f2babcda745194b3d4@EX2013-MBX3.supermicro.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2f71279c-f9a3-d7de-5763-8d66f80897fc@grimberg.me>
Date: Mon, 19 Aug 2019 14:42:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <fd51256163b647f2babcda745194b3d4@EX2013-MBX3.supermicro.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_144254_390577_6D2EF1E5 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> Sorry if this has been asked already but I have set up NVMe over TCP and have no problem configuring a single device on a target node using a script such as the one below. I have multiple NVME devices and can bring the others in using different port IDs but I want to know if multiple devices can use the same IP/port so that a discover command on the initiator will bring them all in?  I have tried different namespaces/nqn for each device. Any examples I have seen only demonstrate single device connectivity.

Your nvme devices are exported as NVMe namespaces (e.g. namespaces/1)
over one or more nvme subsystem(s) (e.g. subsystems/nvmet-test1) that
can exposed via one or more nvme port(s) (e.g. ports/1).

The discover command gives you a list of subsystem(s) port(s) the host
can connect to. Once you connect to a subsystem, the driver will query
the list of namespaces, and then it will find whatever is configured in
namespaces/* and will create a device node for each.

So you can safely add namespaces/1,2,3,4,... and direct them to your
'real' nvme devices, connect to your subsystem and you should be
able to see all of them (using nvme list).

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
