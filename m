Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFB91F7E35
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jun 2020 22:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEqxRVYlCG51fdXXvvkN++fuEVmc0X5bYQfYMFsArO4=; b=aoNZeE4yClCEUf
	Osb0Q1ZjcnVyiRJamrEmv4tqcQPrjthPQjpZL7HXVPFXynXeMxf1v9MzqJFWlIG9xa+kJMX7kYll7
	wjp09UBqcccRNhe9C/oerTTk/eO1YAHi9i4R7oYji8LZnN84vv7/apXFUmvXl6L9bKezGRHufrVn0
	P+Keu6OGElwyY0eHxGeWd/6WleVtRTyG6irH1jQiY/973+3E1maK1zPCsLgroRn77ykD+pY4cl03w
	Qr9Se+4v6K47kvc8KYbp6oAHpxQTqzzd4zRcXMEkN1vAYjspVBMUR2knxeuMxVL8tAHgR4M69f48+
	a54AM9YSbBm/PMoWFLXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjqb1-0007tL-FC; Fri, 12 Jun 2020 20:48:15 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjqax-0007sD-9H
 for linux-nvme@lists.infradead.org; Fri, 12 Jun 2020 20:48:12 +0000
IronPort-SDR: wuyvJAPlIlqM7QCgTcqKN4TyunB8Ytut7wotGNHKydKuDSgceotijb/fDkgK8HnWt28mtiX+Br
 4VosB4Z2qt7Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 13:48:07 -0700
IronPort-SDR: LFgYyzHi1cf6/D4dh3wIX+ANgQ30imkG5tn9trlkftoohDgt4bJgNWyrwJyDfgLr3bATu/+5G8
 CdBnIvZrXwzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,504,1583222400"; d="scan'208";a="307352135"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 12 Jun 2020 13:48:06 -0700
Received: from debox1-desk2.jf.intel.com (debox1-desk2.jf.intel.com
 [10.54.75.16])
 by linux.intel.com (Postfix) with ESMTP id C7EDF5803C5;
 Fri, 12 Jun 2020 13:48:06 -0700 (PDT)
From: "David E. Box" <david.e.box@linux.intel.com>
To: shyjumon.n@intel.com, rjw@rjwysocki.net, lenb@kernel.org,
 bhelgaas@google.com, dan.j.williams@intel.com, kbusch@kernel.org,
 axboe@fb.com, hch@lst.de, sagi@grimberg.me
Subject: [PATCH V2 0/2] nvme: Add support for ACPI StorageD3Enable property
Date: Fri, 12 Jun 2020 13:48:18 -0700
Message-Id: <20200612204820.20111-1-david.e.box@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428003214.3764-1-david.e.box@linux.intel.com>
References: <20200428003214.3764-1-david.e.box@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_134811_364131_9AE6AB52 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-acpi@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, "David E. Box" <david.e.box@linux.intel.com>,
 linux-pci@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch set implements a solution for a BIOS hack used on some currently
shipping Intel systems to address issues with power management policy
decisions concerning PCIe NVMe drives. Some newer Intel platforms, like
some Comet Lake systems, require that PCIe devices use D3 when doing
suspend-to-idle in order to allow the platform to realize maximum power
savings. This is particularly needed to support ATX power supply shutdown
on desktop systems. In order to ensure this happens for root ports with
storage devices, Microsoft apparently created this ACPI _DSD property as a
way to override their driver policy. To my knowledge this property has not
been discussed with the NVME specification body.

Though the solution is not ideal, it addresses a problem that also affects
Linux since the NVMe driver's default policy of using NVMe APST during
suspend-to-idle would lead to higher power consumption for these platforms.

Patch 1 provides a symbol in the PCI/ACPI layer to read the property.
Patch 2 uses the symbol in the NVMe driver to select D3 as a quirk if set.

Changes from V2:
	- Export the pci_acpi_storage_d3 function for use by drivers as
	  needed instead of modifying the pci header.
	- Add missing put on acpi device handle.
	- Add 'noacpi' module parameter to allow undoing this change.
	- Add info message that this is a platform quirk.

David E. Box (2):
  PCI: Add ACPI StorageD3Enable _DSD support
  drivers/nvme: Add support for ACPI StorageD3Enable property

 drivers/acpi/property.c |  3 +++
 drivers/nvme/host/pci.c | 14 ++++++++++
 drivers/pci/pci-acpi.c  | 59 +++++++++++++++++++++++++++++++++++++++++
 include/linux/pci.h     |  2 ++
 4 files changed, 78 insertions(+)

-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
