Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C561185C
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 13:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pPoUqZMFV6B9MnN0HC0Fx0Bva72F4f6SP8FtdvBdmm0=; b=KWQ
	tSS9LR0GVkbqBgimCSMnLULx1awUwJ86s3ZOTLgWG6s+hBqkmO7YhqMCav/Q1U6ouqs2Ywji/cGbr
	C4qZVQcABU2UlHMuiNitCaWnxWC/NcTBikyhamyqJ2Xf3lqzCuMSE/JJIRZnXeqXVVgOZMH+6NQoX
	N5AOzVy0GJRNrTugS6RreIFt74iy5L9DmB/tAXLO9ZpUe0Ge0GPE0eZVJldfyKvszGWgi6x0gaht0
	N1CsYbf18dOvtSshI5e/fF8o+xY2uLOpDIVB5l9sZqvh21bVPqMBss1XJRjm0b0ov8b5Q1ZMuNOQK
	U8dKKKDR+NlG+U21K51JouqXFPcvZrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMACZ-0008OW-2W; Thu, 02 May 2019 11:48:35 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMACU-0008OA-2P
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 11:48:32 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E3037309264D;
 Thu,  2 May 2019 11:48:28 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 24BB08AD96;
 Thu,  2 May 2019 11:48:20 +0000 (UTC)
From: Maxim Levitsky <mlevitsk@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 00/10] RFC: NVME MDEV
Date: Thu,  2 May 2019 14:47:51 +0300
Message-Id: <20190502114801.23116-1-mlevitsk@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 02 May 2019 11:48:29 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_044830_149938_001C1759 
X-CRM114-Status: GOOD (  26.66  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Fam Zheng <fam@euphon.net>, Keith Busch <keith.busch@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, kvm@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liang Cunming <cunming.liang@intel.com>, Wolfram Sang <wsa@the-dreams.de>,
 linux-kernel@vger.kernel.org, Kirti Wankhede <kwankhede@nvidia.com>,
 Maxim Levitsky <mlevitsk@redhat.com>, Jens Axboe <axboe@fb.com>,
 Alex Williamson <alex.williamson@redhat.com>, John Ferlan <jferlan@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 "Paul E . McKenney " <paulmck@linux.ibm.com>, Amnon Ilan <ailan@redhat.com>,
 Christoph Hellwig <hch@lst.de>, Nicolas Ferre <nicolas.ferre@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi everyone!

In this patch series, I would like to introduce my take on the problem of doing 
as fast as possible virtualization of storage with emphasis on low latency.

For more information for the inner working you can look at V1 of the submission
at
https://lkml.org/lkml/2019/3/19/458


*** Changes from V1 ***

* Some correctness fixes that slipped in the last minute,
Nothing major though, and all my attempt to crash this driver lately 
were unsucessfull,
and it pretty much copes with anything I throw at it.


* Experemental block layer mode: In this mode, the mdev driver sends
the IO though the block layer (using bio_submit), and then polls for
the completions using the blk_poll. The last commit in the series adds this.
The performance overhead of this is about 2x of direct dedicated queue submission
though.


For this patch series, I would like to hear your opinion on the generic
block layer code, and to hear your opinion on the code as whole.

Please ignore the fact that code doesn't use nvme target code
(for instance it already have the generic block device code in io-cmd-bdev.c)
I will later switch to it, in next version of these patches, although,
I think that I should keep the option of using the direct, reserved IO queue
version too.


*** Performance results ***

Two tests were run, this time focusing only on latency and especially
on measuring the overhead of the translation.

I used the nvme-5.2 branch of http://git.infradead.org/nvme.git
which includes the small IO performance improvments which show a modest
perf increase in the generic block layer code path.

So the tests were:

** No interrupts test**

For that test, I used spdk's fio plugin as the test client. It itself uses
vfio to bind to the device, and then read/write from it using polling.
For tests that run in the guest, I used the virtual IOMMU, and run that spdk
test in the guest.

IOW, the tests were:

1. spdk in the host with fio
2. nvme-mdev in the host, spdk in the guest with fio
3. spdk in the host, spdk in the guest with fio

The fio (with the spdk plugin)was running at queue depth 1.
In addtion to that I added rdtsc based instrumentation to my mdev driver
to read the number of cycles it takes it to translate a command, and number
of cycles it takes it to poll for the response, and also number of cycles,
it takes to send the interrupt to the guest.

You can find the script at

'https://gitlab.com/maximlevitsky/vm_scripts/blob/master/tests/stest0.sh'


** Interrupts test **

For this test, the client was the kernel nvme driver, and fio running on top of it,
also with queue depth 1.
The test is at

'https://gitlab.com/maximlevitsky/vm_scripts/blob/master/tests/test0.sh'


The tests were done on Intel(R) Xeon(R) Gold 6128 CPU @ 3.40GHz,
with Optane SSD 900P NVME drive.

The system is dual socket, but the system was booted with configuration
that allowed to fully use only NUMA node 0, where the device is attached.


** The results for non interrupt test **

host:
	BW   :574.93 MiB/s  (stdev:0.73 Mib/s)
	IOPS :147,182  (stdev:186 IOPS/s)
	SLAT :0.113 us  (stdev:0.055 us)
	CLAT :6.402 us  (stdev:1.146 us)
	LAT  :6.516 us  (stdev:1.148 us)

mdev/direct:

	BW   :535.99 MiB/s  (stdev:2.62 Mib/s)
	IOPS :137,214  (stdev:670 IOPS/s)
	SLAT :0.128 us  (stdev:3.074 us)
	CLAT :6.909 us  (stdev:4.384 us)
	LAT  :7.038 us  (stdev:6.892 us)

	commands translated : avg cycles: 668.032     avg time(usec): 0.196       total: 8239732             
	commands completed  : avg cycles: 411.791     avg time(usec): 0.121       total: 8239732

mdev/block generic:

	BW   :512.99 MiB/s  (stdev:2.5 Mib/s)
	IOPS :131,324  (stdev:641 IOPS/s)
	SLAT :0.13 us  (stdev:3.143 us)
	CLAT :7.237 us  (stdev:4.516 us)
	LAT  :7.367 us  (stdev:7.069 us)

	commands translated : avg cycles: 1509.207    avg time(usec): 0.444       total: 7879519             
	commands completed  : avg cycles: 1005.299    avg time(usec): 0.296       total: 7879519

    *Here you clearly see the overhead added by the block layer*


spdk:
	BW   :535.77 MiB/s  (stdev:0.86 Mib/s)
	IOPS :137,157  (stdev:220 IOPS/s)
	SLAT :0.135 us  (stdev:0.073 us)
	CLAT :6.905 us  (stdev:1.166 us)
	LAT  :7.04 us  (stdev:1.168 us)


qemu userspace nvme driver:
	BW   :151.56 MiB/s  (stdev:0.38 Mib/s)
	IOPS :38,799  (stdev:97 IOPS/s)
	SLAT :4.655 us  (stdev:0.714 us)
	CLAT :20.856 us  (stdev:1.993 us)
	LAT  :25.512 us  (stdev:2.086 us)

** The results from interrupt test **

host:
	BW   :428.37 MiB/s  (stdev:0.44 Mib/s)
	IOPS :109,662  (stdev:112 IOPS/s)
	SLAT :0.913 us  (stdev:0.077 us)
	CLAT :7.894 us  (stdev:1.152 us)
	LAT  :8.844 us  (stdev:1.155 us)

mdev/direct:
	BW   :401.33 MiB/s  (stdev:1.99 Mib/s)
	IOPS :102,739  (stdev:509 IOPS/s)
	SLAT :0.916 us  (stdev:3.588 us)
	CLAT :8.544 us  (stdev:1.21 us)
	LAT  :9.494 us  (stdev:10.569 us)

	commands translated : avg cycles: 639.993     avg time(usec): 0.188       total: 6164505             
	commands completed  : avg cycles: 398.824     avg time(usec): 0.117       total: 6164505             
	interrupts sent     : avg cycles: 612.795     avg time(usec): 0.18        total: 6164505   

mdev/generic:
	BW   :384.35 MiB/s  (stdev:1.89 Mib/s)
	IOPS :98,394  (stdev:483 IOPS/s)
	SLAT :0.986 us  (stdev:3.668 us)
	CLAT :8.86 us  (stdev:8.584 us)
	LAT  :9.897 us  (stdev:9.336 us)

	commands translated : avg cycles: 1537.659    avg time(usec): 0.452       total: 5903703
	commands completed  : avg cycles: 976.604     avg time(usec): 0.287       total: 5903703
	interrupts sent     : avg cycles: 596.916     avg time(usec): 0.176       total: 5903703

spdk:
	BW   :395.11 MiB/s  (stdev:0.54 Mib/s)
	IOPS :101,149  (stdev:137 IOPS/s)
	SLAT :0.857 us  (stdev:0.123 us)
	CLAT :8.755 us  (stdev:1.224 us)
	LAT  :9.644 us  (stdev:1.229 us)

aio_kernel/virtio_blk (other combinations showed similiar, a bit worse latency):

	BW   :176.27 MiB/s  (stdev:3.14 Mib/s)
	IOPS :45,125  (stdev:804 IOPS/s)
	SLAT :1.584 us  (stdev:0.375 us)
	CLAT :20.291 us  (stdev:2.031 us)
	LAT  :21.91 us  (stdev:2.057 us)

qemu userspace driver:

	BW   :119.51 MiB/s  (stdev:0.8 Mib/s)
	IOPS :30,595  (stdev:203 IOPS/s)
	SLAT :4.976 us  (stdev:0.71 us)
	CLAT :27.304 us  (stdev:2.668 us)
	LAT  :32.336 us  (stdev:2.736 us)

  
*** FAQ ***

* Why to make this in the kernel? Why this is better that SPDK

  -> Reuse the existing nvme kernel driver in the host. No new drivers in the guest.
  
  -> Share the NVMe device between host and guest. 
     Even in fully virtualized configurations,
     some partitions of nvme device could be used by guests as block devices 
     while others passed through with nvme-mdev to achieve balance between
     all features of full IO stack emulation and performance.
     
  -> This is a framework that later can be used to support NVMe devices 
     with more of the IO virtualization built-in 
     (IOMMU with PASID support coupled with device that supports it)


* Why to attach directly to nvme-pci driver and not use block layer IO
  -> The direct attachment allows for better performance (2x), 
     but it is possible to use block layer IO, especially for fabrics drivers, and/or
     non nvme block devices.

*** Testing ***

The device was tested with mostly stock QEMU 4 on the host,
with host was using 5.1-rc6 kernel with nvme-mdev added and the following hardware:
 * QEMU nvme virtual device (with nested guest)
 * Intel DC P3700 on Xeon E5-2620 v2 server
 * Intel Corporation Optane SSD 900P Series
 * Samsung SM981 (in a Thunderbolt enclosure, with my laptop)
 * Lenovo NVME device found in my laptop

The guest was tested with kernel 4.16, 4.18, 4.20 and
the same custom complied kernel 5.0
Windows 10 guest was tested too with both Microsoft's inbox driver and
open source community NVME driver
(https://lists.openfabrics.org/pipermail/nvmewin/2016-December/001420.html)

Testing was mostly done on x86_64, but 32 bit host/guest combination
was lightly tested too.

In addition to that, the virtual device was tested with nested guest,
by passing the virtual device to it,
using pci passthrough, qemu userspace nvme driver, and spdk


Maxim Levitsky (10):
  vfio/mdev: add notifier for map events
  vfio/mdev: add .request callback
  nvme/core: add some more values from the spec
  nvme/core: add NVME_CTRL_SUSPENDED controller state
  nvme/pci: use the NVME_CTRL_SUSPENDED state
  nvme/core: add mdev interfaces
  nvme/core: add nvme-mdev core driver
  nvme/pci: implement the mdev external queue allocation interface
  nvme/mdev - Add inline performance measurments
  nvme/mdev - generic block IO POC

 MAINTAINERS                     |   5 +
 drivers/nvme/Kconfig            |   1 +
 drivers/nvme/Makefile           |   1 +
 drivers/nvme/host/core.c        | 144 +++++-
 drivers/nvme/host/nvme.h        |  55 +-
 drivers/nvme/host/pci.c         | 381 +++++++++++++-
 drivers/nvme/mdev/Kconfig       |  24 +
 drivers/nvme/mdev/Makefile      |   5 +
 drivers/nvme/mdev/adm.c         | 873 ++++++++++++++++++++++++++++++++
 drivers/nvme/mdev/events.c      | 142 ++++++
 drivers/nvme/mdev/host.c        | 741 +++++++++++++++++++++++++++
 drivers/nvme/mdev/instance.c    | 866 +++++++++++++++++++++++++++++++
 drivers/nvme/mdev/io.c          | 601 ++++++++++++++++++++++
 drivers/nvme/mdev/irq.c         | 270 ++++++++++
 drivers/nvme/mdev/mdev.h        |  56 ++
 drivers/nvme/mdev/mmio.c        | 588 +++++++++++++++++++++
 drivers/nvme/mdev/pci.c         | 247 +++++++++
 drivers/nvme/mdev/priv.h        | 774 ++++++++++++++++++++++++++++
 drivers/nvme/mdev/udata.c       | 390 ++++++++++++++
 drivers/nvme/mdev/vcq.c         | 209 ++++++++
 drivers/nvme/mdev/vctrl.c       | 518 +++++++++++++++++++
 drivers/nvme/mdev/viommu.c      | 322 ++++++++++++
 drivers/nvme/mdev/vns.c         | 356 +++++++++++++
 drivers/nvme/mdev/vsq.c         | 181 +++++++
 drivers/vfio/mdev/vfio_mdev.c   |  11 +
 drivers/vfio/vfio_iommu_type1.c |  97 +++-
 include/linux/mdev.h            |   4 +
 include/linux/nvme.h            |  88 +++-
 include/linux/vfio.h            |   4 +
 29 files changed, 7905 insertions(+), 49 deletions(-)
 create mode 100644 drivers/nvme/mdev/Kconfig
 create mode 100644 drivers/nvme/mdev/Makefile
 create mode 100644 drivers/nvme/mdev/adm.c
 create mode 100644 drivers/nvme/mdev/events.c
 create mode 100644 drivers/nvme/mdev/host.c
 create mode 100644 drivers/nvme/mdev/instance.c
 create mode 100644 drivers/nvme/mdev/io.c
 create mode 100644 drivers/nvme/mdev/irq.c
 create mode 100644 drivers/nvme/mdev/mdev.h
 create mode 100644 drivers/nvme/mdev/mmio.c
 create mode 100644 drivers/nvme/mdev/pci.c
 create mode 100644 drivers/nvme/mdev/priv.h
 create mode 100644 drivers/nvme/mdev/udata.c
 create mode 100644 drivers/nvme/mdev/vcq.c
 create mode 100644 drivers/nvme/mdev/vctrl.c
 create mode 100644 drivers/nvme/mdev/viommu.c
 create mode 100644 drivers/nvme/mdev/vns.c
 create mode 100644 drivers/nvme/mdev/vsq.c

-- 
2.17.2


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
