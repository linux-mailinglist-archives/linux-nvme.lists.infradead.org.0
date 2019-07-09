Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1DD63DF9
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jul 2019 00:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:In-Reply-To:References:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FeorLV6dUYaxZ111rPNfPMSFGN90YmLr7vfXizk/Iqc=; b=rhsX1g2ndFX4ValWyGyaZpRx4
	bFKkEGuYo+s29EZCkoZheZUa7PlLrMLZ5Op+WfNgHx4ia9J5OZo5qVtJMFKuCCVtKZ3HNkN89oAsG
	Gvu8c1M5qYaIhk75tiVKoT4eL7xB5+vdJlaM6sfrDMk2qTImqDDGsqfAjHkMT+DuVYhsohOiP13jK
	K18rvze/GL/sbZpfzLwrtPb4YZREiRnVDxvtlY+LgvXoHYhxf6lpIxyFpp30S1r58eaQJIB/zAMGR
	E/5Vz2Ds0rfipmRfm/Ovi95+lydOb1yBajRL/gF77G5/aWvFJK6NUTvYheYARmQIuOWB9cj/BKkAf
	/iCyMBuTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkytQ-0002ce-IK; Tue, 09 Jul 2019 22:47:24 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkytH-0002c9-Fu
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 22:47:17 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 15:47:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,472,1557212400"; 
 d="p7s'?scan'208";a="173699891"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Jul 2019 15:47:13 -0700
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 9 Jul 2019 15:47:12 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.157]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.92]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 15:47:12 -0700
From: "Derrick, Jonathan" <jonathan.derrick@intel.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: Should hot removed devices close open namespace bd references?
Thread-Topic: Should hot removed devices close open namespace bd references?
Thread-Index: AQHVNbvqtlB3EQuFOkGBXTU7sMclWabDLjuAgAAsJAA=
Date: Tue, 9 Jul 2019 22:47:12 +0000
Message-ID: <4eddc7d98f49abf4255c31fbe4412ce9e3877c06.camel@intel.com>
References: <d7027ad47e28339f13eb2d7f1bff4c7749da1160.camel@intel.com>
 <32a2e339-b948-43fe-72a3-77eb2e626c63@grimberg.me>
In-Reply-To: <32a2e339-b948-43fe-72a3-77eb2e626c63@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.115.162]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_154715_544849_7A782E3A 
X-CRM114-Status: GOOD (  25.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============4000301824546033865=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

--===============4000301824546033865==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-bvw+Sby8ZsfgWMnq8zm6"

--=-bvw+Sby8ZsfgWMnq8zm6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sagi,

On Tue, 2019-07-09 at 13:09 -0700, Sagi Grimberg wrote:
> > Hello,
> >=20
> > 5.2 shows a strange regression where if a namespace handle is open and
> > the device is hot removed, then hot inserted, the new controller
> > instance fails to enumerate.
>=20
> This is due to 1b1031ca63b2 ("nvme: validate cntlid during controller=20
> initialisation")
>=20
> > Previous kernels back to the multipathing introduction would simply add
> > the new namespace to the previous controller's subsystem id, so you
> > would end up with something like:
> > /dev/nvme2
> > /dev/nvme0n2
> > Because the subsystem namespace instance is 2 upon enumeration as the
> > previous handle hadn't been released through the block layer.
>=20
> Its the controller that is not released (as the open ns handle holds
> a reference to it). But what is the old controller state? the code
> is supposed to allow this check if the old controller is in
> DELETING/DEAD.
The state is 6 (DEAD). I added some sysfs code to show the controller
state:

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 120fb593d1da..9a81d9d3179d 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2314,6 +2314,25 @@ static struct nvme_subsystem
*__nvme_find_get_subsystem(const char *subsysnqn)
 	struct device_attribute subsys_attr_##_name =3D \
 		__ATTR(_name, _mode, _show, NULL)
=20
+static ssize_t nvme_subsys_show_ctrls(struct device *dev,
+					 struct device_attribute *attr,
+					 char *buf)
+{
+	struct nvme_subsystem *subsys =3D
+		container_of(dev, struct nvme_subsystem, dev);
+	struct nvme_ctrl *ctrl;
+	int count =3D 0;
+
+	mutex_lock(&nvme_subsystems_lock);
+	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry)
+		count +=3D sprintf(buf, "%s: state %d\n",
+				 dev_name(ctrl->device), ctrl->state);
+	mutex_unlock(&nvme_subsystems_lock);
+
+	return count;
+}
+static SUBSYS_ATTR_RO(subsys_ctrls, S_IRUGO, nvme_subsys_show_ctrls);
+
 static ssize_t nvme_subsys_show_nqn(struct device *dev,
 				    struct device_attribute *attr,
 				    char *buf)
@@ -2345,6 +2364,7 @@ static struct attribute *nvme_subsys_attrs[] =3D {
 	&subsys_attr_serial.attr,
 	&subsys_attr_firmware_rev.attr,
 	&subsys_attr_subsysnqn.attr,
+	&subsys_attr_subsys_ctrls.attr,
 #ifdef CONFIG_NVME_MULTIPATH
 	&subsys_attr_iopolicy.attr,
 #endif



Result:
root@deb:~# cat /sys/class/nvme-subsystem/nvme-subsys1/subsys_ctrls=20
nvme1: state 6


>=20
> > With 5.2, I instead see:
> > [  247.767504] nvme nvme2: pci function 10000:01:00.0
> > [  247.772642] nvme 10000:01:00.0: enabling device (0000 -> 0002)
> > [  247.778671] pcieport 10000:00:02.0: can't derive routing for PCI INT
> > A
> > [  247.785411] nvme 10000:01:00.0: PCI INT A: no GSI
> > [  247.899879] nvme nvme2: Duplicate cntlid 0 with nvme0, rejecting
> > [  247.906086] nvme nvme2: Removing after probe failure status: -22
> >=20
> >=20
> > Here's a test program:
> > #define _GNU_SOURCE
> > #include <sys/types.h>
> > #include <sys/stat.h>
> > #include <fcntl.h>
> >=20
> > int main(int argc, char *argv[])
> > {
> >          int fd;
> >=20
> >          fd =3D open("/dev/nvme0n1", O_DIRECT);
> >=20
> >          for (;;)
> >                  ;
> > }
> >=20
> >=20
> >=20
> > Run this and in parallel, remove the link from the upstream port:
> > setpci -s <BDF> CAP_EXP+10.w=3D10:10
> > And add it back:
> > setpci -s <BDF> CAP_EXP+10.w=3D0:10
>=20
> If you wait a bit between these operations, does it work as expected?
It doesn't clear up.
If I attach gdb and close the file handle, then it clears up.



When I use manual hotplugs rather than link active control, I see the
controller instance still active in the subsystem:

root@deb:~# ll /sys/class/nvme-subsystem/nvme-subsys1/
total 0
-r--r--r-- 1 root root 4096 Jul  9 10:26 firmware_rev
-rw-r--r-- 1 root root 4096 Jul  9 10:26 iopolicy
-r--r--r-- 1 root root 4096 Jul  9 10:26 model
lrwxrwxrwx 1 root root    0 Jul  9 10:26 nvme1 ->
../../../pci0000:17/0000:17:05.5/pci10000:00/10000:00:03.0/10000:02:00.
0/nvme/nvme1
drwxr-xr-x 2 root root    0 Jul  9 10:26 power
-r--r--r-- 1 root root 4096 Jul  9 10:26 serial
-r--r--r-- 1 root root 4096 Jul  9 10:26 subsys_ctrls
-r--r--r-- 1 root root 4096 Jul  9 10:26 subsysnqn
lrwxrwxrwx 1 root root    0 Jul  9 10:26 subsystem ->
../../../../class/nvme-subsystem
-rw-r--r-- 1 root root 4096 Jul  9 10:24 uevent

root@deb:~# cat /sys/class/nvme-subsystem/nvme-subsys1/nvme1=20
cat: /sys/class/nvme-subsystem/nvme-subsys1/nvme1: No such file or
directory


=46rom what I see, the subsystem release function can't be called until
the controller and namespace reference is dropped. That seems fine
because the handle is still open (though dead), except that a new
insertion of the same device is now rejected. In old code, the lack of
subsystem release just meant you got weird naming.

Note this occurs with multipath=3Dy and =3Dn

--=-bvw+Sby8ZsfgWMnq8zm6
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
PNauajAtxgRKfqfSMb+IcL/VXiPtVZOxVq+CTZeDJkaEmn/79vg8OYxpR+YhFF+tGlKf/Zc4id1P
AgMBAAGjggI3MIICMzAdBgNVHQ4EFgQU4oawcWXM1cPGdwGcIszDfjORVZAwHwYDVR0jBBgwFoAU
HmkqtNwo/kcYTiELP7ysES/wmPUwZQYDVR0fBF4wXDBaoFigVoZUaHR0cDovL3d3dy5pbnRlbC5j
b20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENB
JTIwNEEuY3JsMIGfBggrBgEFBQcBAQSBkjCBjzBpBggrBgEFBQcwAoZdaHR0cDovL3d3dy5pbnRl
bC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIw
SXNzdWluZyUyMENBJTIwNEEuY3J0MCIGCCsGAQUFBzABhhZodHRwOi8vb2NzcC5pbnRlbC5jb20v
MAsGA1UdDwQEAwIHgDA8BgkrBgEEAYI3FQcELzAtBiUrBgEEAYI3FQiGw4x1hJnlUYP9gSiFjp9T
gpHACWeB3r05lfBDAgFkAgEJMB8GA1UdJQQYMBYGCCsGAQUFBwMEBgorBgEEAYI3CgMMMCkGCSsG
AQQBgjcVCgQcMBowCgYIKwYBBQUHAwQwDAYKKwYBBAGCNwoDDDBRBgNVHREESjBIoCoGCisGAQQB
gjcUAgOgHAwaam9uYXRoYW4uZGVycmlja0BpbnRlbC5jb22BGmpvbmF0aGFuLmRlcnJpY2tAaW50
ZWwuY29tMA0GCSqGSIb3DQEBBQUAA4IBAQBxGkHe05DNpYel4b9WbbyQqD1G6y6YA6C93TjKULZi
p8+gO1LL096ixD44+frVm3jtXMikoadRHQJmBJdzsCywNE1KgtrYF0k4zRWr7a28nyfGgQe4UHHD
7ARyZFeGd7AKSQ1y4/LU57I2Aw2HKx9/PXavv1JXjjO2/bqTfnZDJTQmOQ0nvlO3/gvbbABxZHqz
NtfHZsQWS7s+Elk2xGUQ0Po2pMCQoaPo9R96mm+84UP9q3OvSqMoaZwfzoUeAx2wGJYl0h3S+ABr
CPVfCgq9qnmVCn5DyHWE3V/BRjJCoILLBLxAxnmSdH4pF6wJ6pYRLEw9qoyNhpzGUIJU/Lk1MYIC
FzCCAhMCAQEwgZAweTELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRQwEgYDVQQHEwtTYW50YSBD
bGFyYTEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFs
IEJhc2ljIElzc3VpbmcgQ0EgNEECEzMAAMamAkocC+WQNPgAAAAAxqYwCQYFKw4DAhoFAKBdMBgG
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE5MDcwOTIyNDcxMlowIwYJ
KoZIhvcNAQkEMRYEFCcvonKfxze4+/YEmxIie7R3BaLaMA0GCSqGSIb3DQEBAQUABIIBACuD6NAl
gjxa9fqQoPdlnzDW/asVt/C/yaVXiepKZZaBqProj90CNGVkJy3DOeGywFWhreV0ec4B0upKeyw6
bIAdgbtRIV6LIV784uJ9GD0GRhgS0XF2E+zu8efkGIf9PjNRyxnf0yLmOfGoKVq9Ztj/oLTpmsbM
Tiq2qIS+E38ZLVIzqFdT3QLf5/IHFG+3GG5J9OfnSCAMtbfqlGliJ/u2zSkNRwUETvuYulMO4KAQ
2ugx3jCKo0Cbj9C7w6DgBIuy86Zzxyl1cts0b9L7Qh7KWLExbeqlyAvrwfo9ovg6Ffvlg9lPgAk4
Kroe8tQCcbtppZhZqMP8aeksbMUzpB0AAAAAAAA=


--=-bvw+Sby8ZsfgWMnq8zm6--


--===============4000301824546033865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============4000301824546033865==--

