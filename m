Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105D1291D6
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 09:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UdcZq9OIbsBcGQvEZx7rOSra1XNt63hQugcW2c16x3M=; b=pX97mRTUrkuKL9AeAuT5ksGBW
	F+DOc1kWTeFZZ2pSiCXUnNnnriTMwwz9NTJYJIUXQsSu4qak3e75rxkktAGZRRjNzu8H4N5aeGyg+
	BcnSIhDJE/Z0XwWPW4PgxCDoR+e7Zv9j/eUcXuQ+l2qaRF102Jkm6JRk/TrowHXE+SDrxnd634lBa
	Gp1y5eVYmNmPGBGsdADfA797eiNEqyNrSn847VE88qrbC6bHaEXnAnVrEEoRPQgULcxtvtlzwwHZv
	xW0QbbB4WKGqUG7yrhGZRbuulTLa2r1vKKFI3ZmjBcwJKYL7FMdY4aPjm4y5Qg+VcV4kdeBOYMUk4
	rUJ335oHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU4jn-0002XM-8z; Fri, 24 May 2019 07:35:35 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4jh-0002V1-RQ
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 07:35:31 +0000
Received: by mail-pf1-f195.google.com with SMTP id r22so1929853pfh.9
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 00:35:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=b1iF3Qxz75UowM/URKnuKcrDNkGO/dRDB2561E5N1kc=;
 b=C+9vADP9uvRP5qyERAAJXUnaDZbFec/ziahokE7zfBPbmzoMWWiihRzCjkeWfSgnBV
 yG6EqSlo2Rpo3ZJ2sb/7YXZeQonpQ8yU1kt8mfsWL8qnvLxLWFduOOCON56EDghYuAOT
 EKxwWYv5R5a8VpISdGRubPCi4evYWhvLC6BuVN4hu+zokRVOpcgh1fntwLzW0yBZe9+q
 8IyHZMFy6I5ctVX/8yaJ+XPsfZnf/3/CiDiAV05IzC+D8kDobUco+2O2lvGH9GZEz0Wc
 uoJG35PXqv5b8xuuRcrnmJsMhe3dgAsnu3MXBj2eyUUkb3fWgJeeCg+E/Y7zeM1ROMUK
 zhvg==
X-Gm-Message-State: APjAAAV4Ccnf1prnCFBe+mqBwE9xfwZ8NJHf88zwrmWSKptsdvntGyBz
 rgdxi5Bc6iOgpjl1xK7sTKk=
X-Google-Smtp-Source: APXvYqzS1Q3BUvT/TFw5jBPX4qZdyhOj/RM1yuxy6NzNnvHVOlqoIxmSPISCnjtLLxElAo5jpYjiQg==
X-Received: by 2002:a17:90a:fa0d:: with SMTP id
 cm13mr7265810pjb.115.1558683329211; 
 Fri, 24 May 2019 00:35:29 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id k9sm4082408pje.1.2019.05.24.00.35.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 00:35:28 -0700 (PDT)
Subject: Re: [PATCH v2 0/9] Add Subsystem/Ctrl/Namespace relations (nvme-cli)
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de
References: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <285cd2f5-4d17-3bd5-751f-a2255cceaedb@grimberg.me>
Date: Fri, 24 May 2019 00:35:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_003529_881766_01D8F9E8 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
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
Cc: shlomin@mellanox.com, martin.petersen@oracle.com, minwoo.im@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> This patchset introduce few small bug fixes for memory leaks, improve
> coding style, improve code readability and mainly focus on the "nvme list-subsys"
> command. This command will show the whole NVM subsystem list (same as "nvme list"
> does for namespaces).
> The patchset ends with adding namespaces entry per each ctrl in the system.
> Actually, at first stage, we'll print only the namespace handle (nvme0n1 for
> example). Later on, we can add more attribute per demand (uuid, nguid, capacity,
> etc...).

Can you split patches 1-5 to a separate fixes series? Would be easier to
review.

As for the list-subsys, I think that when passing the namespace handle
it should only output the corresponding namespace from each controller.

list-subsys in my mind should probably stay as is without a namespace
handle passed because it doesn't give any meaningful information without
the mpath-namespace to slaves mapping.

Instead, a more effective display would be the mapping of each mpath
namespace to the corresponding slave namespaces. Perhaps with a new
command "list-mpath"?

On a side question, what does this information give the user if the
slave devices don't have a device node?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
